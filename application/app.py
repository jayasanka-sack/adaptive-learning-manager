from threading import Lock

from flask import Flask, render_template, request, \
    copy_current_request_context
from flask_socketio import SocketIO, emit, disconnect
import pandas as pd
import requests

HAR_MANAGER = "http://localhost:5001"

app = Flask(__name__)
app.config['SECRET_KEY'] = 'secret!'
socketio = SocketIO(app)
thread = None
thread_lock = Lock()
column_names = ['activity',
                'timestamp',
                'watch-accel-x',
                'watch-accel-y',
                'watch-accel-z',
                'phone-accel-x',
                'phone-accel-y',
                'phone-accel-z']
required_sensors = []
current_status = {
    'goal': 'ACCURACY',
    'sensor_data': {},
    'model': None
}
DEFAULT_FREQUENCY = 20
frequency = DEFAULT_FREQUENCY
segment_size = None
# Read test data
df = pd.read_csv('./data_compact.csv', header=None, names=column_names)
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
        socketio.emit('sensor_data',
                      {'data': data, 'current_model_key': None})
        if segment_size is not None:
            if segment_size == counter:
                # Get the required range of records
                data = df.iloc[(i - int(segment_size * steps)): i]
                # Refine to the correct frequency
                data = data.iloc[::steps]
                predict(data.to_json())
                counter = 0
        if i == size:
            i = 0
            counter = 0


@app.route('/')
def index():
    return render_template('index.html', async_mode=socketio.async_mode)


# Event to receive device status
@socketio.event
def device_status(message):
    global required_sensors, current_status, frequency, segment_size, counter
    url = HAR_MANAGER + '/status'
    try:
        response = requests.post(url, json=message).json()
        current_status = response['current_status']
        if current_status['model'] is None:
            required_sensors = []
            frequency = DEFAULT_FREQUENCY
        else:
            required_sensors = current_status['model']['sensors']
            frequency = current_status['model']['frequency']
            segment_size = int(frequency * current_status['model']['interval'] / 1000)
        if response['is_adapted']:
            counter = 0
        emit('device_status_response',
             {'data': response},
             broadcast=True)
    except requests.exceptions.RequestException as e:
        app.logger.info('Failed to send data')


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


def predict(data):
    url = HAR_MANAGER + '/predict'
    try:
        response = requests.post(url, json=data)
        socketio.emit('prediction',
                      {'data': response.json()})
    except requests.exceptions.RequestException as e:
        app.logger.info('Failed to receive prediction')
        socketio.emit('prediction',
                      {'data': {
                          'prediction': 'Failed to receive prediction',
                          'current_model_key': None
                      }})


@socketio.on('disconnect')
def test_disconnect():
    print('Client disconnected', request.sid)


if __name__ == '__main__':
    socketio.run(app)
