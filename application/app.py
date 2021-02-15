from threading import Lock

from flask import Flask, render_template, session, request, \
    copy_current_request_context
from flask_socketio import SocketIO, emit, disconnect
import pandas as pd
from service.HarService import HarService
import logging

log = logging.getLogger('werkzeug')
log.setLevel(logging.ERROR)
async_mode = None

app = Flask(__name__)
app.config['SECRET_KEY'] = 'secret!'
socketio = SocketIO(app, async_mode=async_mode)
HarService.websocket = socketio
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
HarService.loadModels()


# Simulation thread
def background_thread():
    i = 0
    size = df.shape[0]
    while True:
        socketio.sleep(0.05)
        keys = HarService.available_sensors.copy()
        keys.append('timestamp')
        data = df[keys].loc[i].to_frame().T.to_json(orient="records")
        i += 1
        socketio.emit('sensor_data',
                      {'data': data, 'current_model_key': HarService.current_model_key})
        if i % 200 == 0:
            prediction = HarService.predict(df.iloc[(i - 200): i])
            socketio.emit('prediction',
                          {'data': prediction})
        if i == size:
            i = 0


@app.route('/')
def index():
    return render_template('index.html', async_mode=socketio.async_mode)


# Event to receive device status
@socketio.event
def device_status(message):
    HarService.monitor(message)
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


@socketio.on('disconnect')
def test_disconnect():
    print('Client disconnected', request.sid)


if __name__ == '__main__':
    socketio.run(app)
