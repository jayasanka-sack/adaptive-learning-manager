from flask import Flask, request
import pandas as pd
from service.HarService import HarService

app = Flask(__name__)


@app.route('/status', methods=['POST'])
def status():
    return HarService.monitor(request.get_json())


@app.route('/predict', methods=['POST'])
def predict():
    prediction = HarService.predict(pd.read_json(request.get_json()))
    return prediction


if __name__ == '__main__':
    HarService.loadModels()
    app.run(port=5001, host='0.0.0.0')
