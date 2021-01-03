from threading import Lock

from flask import Flask, render_template, session, request, \
    copy_current_request_context
from flask_socketio import SocketIO, emit, disconnect
import pandas as pd
from service.HarService import HarService

# Set this variable to "threading", "eventlet" or "gevent" to test the
# different async modes, or leave it set to None for the application to choose
# the best option based on installed packages.
from pandas.io import json

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

df = pd.read_csv('../data.csv', header=None, names=column_names)
HarService.loadModels()


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


@socketio.event
def my_event(message):
    session['receive_count'] = session.get('receive_count', 0) + 1
    emit('my_response',
         {'data': message['data'], 'count': session['receive_count']})


@socketio.event
def my_broadcast_event(message):
    session['receive_count'] = session.get('receive_count', 0) + 1
    emit('my_response',
         {'data': message['data'], 'count': session['receive_count']},
         broadcast=True)


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

    session['receive_count'] = session.get('receive_count', 0) + 1
    # for this emit we use a callback function
    # when the callback function is invoked we know that the message has been
    # received and it is safe to disconnect
    emit('my_response',
         {'data': 'Disconnected!', 'count': session['receive_count']},
         callback=can_disconnect)


@socketio.event
def my_ping():
    emit('my_pong')


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
