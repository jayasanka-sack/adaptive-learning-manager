from threading import Lock

from flask import Flask, render_template, request, \
    copy_current_request_context
from flask_socketio import SocketIO, emit, disconnect
import pandas as pd
import requests
import json

ALF = "http://alf:5001"

app = Flask(__name__, static_url_path='')
app.config['SECRET_KEY'] = 'secret!'
socketio = SocketIO(app)
thread = None
thread_lock = Lock()
column_names = ['activity',
                'timestamp',
                'watch_accel_x',
                'watch_accel_y',
                'watch_accel_z',
                'phone_accel_x',
                'phone_accel_y',
                'phone_accel_z']
required_sensors = []
current_status = {
    'goal': 'ACCURACY',
    'sensor_data': {},
    'model_config': None,
    'devices': []
}

devices = {
    'phone': {
        'sensors': [
            'phone_accel_x',
            'phone_accel_y',
            'phone_accel_z'
        ],
        'battery': 100,
        'min_battery': 0,
        'capacity': 0.5,
        'isAvailable': False
    },
    'watch': {
        'sensors': [
            'watch_accel_x',
            'watch_accel_y',
            'watch_accel_z',
        ],
        'battery': 100,
        'capacity': 0.1,
        'min_battery': 0,
        'isAvailable': False
    }
}

DEFAULT_FREQUENCY = 20
frequency = DEFAULT_FREQUENCY
segment_size = None
# Read test data
df = pd.read_csv('./simulator_data.csv', header=None, names=column_names)
counter = 0


# Simulation thread
def background_thread():
    global counter
    i = 0
    size = df.shape[0]
    while True:
        socketio.sleep(1 / frequency)
        keys = required_sensors.copy()
        keys.append('timestamp')
        data = df[keys].loc[i].to_frame().T.to_json(orient="records")
        steps = int(DEFAULT_FREQUENCY / frequency)
        i += steps
        counter += 1
        for device_key in devices:
            device = devices[device_key]
            previous_battery_level = device['battery']
            if set(required_sensors) & set(device['sensors']):
                calculated_battery = device['battery'] - (1 / frequency) * current_status['model_config']['energy'] / 3600 / \
                                     device['capacity']
                if calculated_battery > 0:
                    device['battery'] = calculated_battery
                else:
                    device['battery'] = 0
            # When battery level drops below the minimum
            if previous_battery_level - device['min_battery'] < previous_battery_level - device['battery']:
                send_current_context()

        socketio.emit('sensor_data', {
            'data': data,
            'device_status': json.dumps(devices)
        })
        if segment_size is not None:
            if segment_size == counter:
                # Get the required range of records
                data = df.iloc[(i - int(segment_size * steps)): i]
                # Refine to the correct frequency
                data = data.iloc[::steps]
                predict(data.to_json())
                counter = 0
        if i == size - 2:
            i = 0
            counter = 0


@app.route('/')
def index():
    return render_template('index.html', async_mode=socketio.async_mode)


# Event to receive device status
@socketio.event
def device_status(status):
    global current_status
    current_status['goal'] = status['goal']
    for device in status['devices']:
        device_key = device['key']
        devices[device_key]['isAvailable'] = device['isAvailable']
        devices[device_key]['min_battery'] = float(device['min_battery'])

    send_current_context()


@socketio.event
def disconnect_request():
    @copy_current_request_context
    def can_disconnect():
        disconnect()

    emit('my_response',
         {'data': 'Disconnected!'},
         callback=can_disconnect)


# Connect to the websocket
@socketio.event
def connect():
    global thread
    with thread_lock:
        if thread is None:
            thread = socketio.start_background_task(background_thread)
    emit('my_response', {'data': 'Connected', 'count': 0})


@socketio.event
def recharge_device(device):
    devices[device]['battery'] = 100
    send_current_context()


def predict(data):
    url = ALF + '/predict'
    try:
        response = requests.post(url, json=data)
        socketio.emit('prediction',
                      {'data': response.json()})
    except requests.exceptions.RequestException as e:
        app.logger.info('Failed to receive prediction')
        socketio.emit('prediction',
                      {'data': {
                          'prediction': 'Failed to receive prediction'
                      }})


@socketio.on('disconnect')
def test_disconnect():
    print('Client disconnected', request.sid)


def send_current_context():
    global required_sensors, current_status, frequency, segment_size, counter
    url = ALF + '/context'
    context = {
        'goal': current_status['goal'],
        'inputs': []
    }
    for device_key in devices:
        device = devices[device_key]
        if device['isAvailable'] and device['battery'] > device['min_battery']:
            context['inputs'].extend(device['sensors'])

    try:
        response = requests.post(url, json=context).json()
        new_model_config = response['current_model_config']
        current_status['model_config'] = new_model_config
        if new_model_config is None:
            required_sensors = []
            frequency = DEFAULT_FREQUENCY
        else:
            required_sensors = new_model_config['inputs']
            frequency = new_model_config['frequency']
            segment_size = int(frequency * new_model_config['interval'] / 1000)
        if response['adapted']:
            counter = 0
        socketio.emit('device_status_response',
                      {'data': response},
                      broadcast=True)
    except requests.exceptions.RequestException as e:
        app.logger.info('Failed to send data')


if __name__ == '__main__':
    socketio.run(app, port=8000, host='0.0.0.0')
