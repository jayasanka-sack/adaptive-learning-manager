from threading import Lock

from flask import Flask, render_template, request, \
    copy_current_request_context
from flask_socketio import SocketIO, emit, disconnect
import pandas as pd
import logging
import requests

HAR_MANAGER = "http://localhost:5001"
log = logging.getLogger('werkzeug')
log.setLevel(logging.ERROR)
async_mode = None

app = Flask(__name__)
app.config['SECRET_KEY'] = 'secret!'
socketio = SocketIO(app, async_mode=async_mode)
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
# Read test data
df = pd.read_csv('./data_compact.csv', header=None, names=column_names)


# HarService.loadModels()


# Simulation thread
def background_thread():
    i = 0
    size = df.shape[0]
    while True:
        socketio.sleep(0.05)
        keys = []
        keys.append('timestamp')
        data = df[keys].loc[i].to_frame().T.to_json(orient="records")
        i += 1
        socketio.emit('sensor_data',
                      {'data': data, 'current_model_key': None})
        if i % 200 == 0:
            # prediction = HarService.predict(df.iloc[(i - 200): i])
            # socketio.emit('prediction',
            #               {'data': prediction})
            data = df.iloc[(i - 200): i].to_json()
            predict(data)
        if i == size:
            i = 0


@app.route('/')
def index():
    return render_template('index.html', async_mode=socketio.async_mode)


# Event to receive device status
@socketio.event
def device_status(message):
    url = HAR_MANAGER + '/status'
    try:
        response = requests.post(url, json=message)
    except requests.exceptions.RequestException as e:
        app.logger.info('Failed to send data')
    emit('device_status_response',
         {'data': message},
         broadcast=True)


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


async def predict(data):
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
