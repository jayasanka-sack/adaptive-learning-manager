from flask import Flask, request
import pandas as pd
from service.AdaptationManager import AdaptationManager
from service.PredictionService import PredictionService

app = Flask(__name__)
prediction_service = PredictionService()
adaptation_manager = AdaptationManager(prediction_service)


@app.route('/context', methods=['POST'])
def status():
    return adaptation_manager.adapt(request.get_json())


@app.route('/predict', methods=['POST'])
def predict():
    prediction = prediction_service.predict(pd.read_json(request.get_json()))
    return {
        'prediction': prediction
    }


if __name__ == '__main__':
    adaptation_manager.load_modal_configs()
    app.run(port=5001, host='0.0.0.0')
