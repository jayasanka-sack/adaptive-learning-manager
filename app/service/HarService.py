from tensorflow import keras
from sklearn import preprocessing
import numpy as np
import json
import collections

LABELS = ['A',
          'B',
          'C',
          'D',
          'E']

le = preprocessing.LabelEncoder()
le.fit(LABELS)
# Normalization parameters
normalization_max = 66.615074
normalization_min = -78.47761
# Model metadata
models = None
model_repository = {}


class HarService:
    available_sensors = []
    current_model_key = None

    # Predict activities using provided sensor data
    @staticmethod
    def predict(data):
        if HarService.current_model_key is None:
            return {
                'prediction': None,
                'current_model_key': HarService.current_model_key
            }
        input_data = HarService.preProcessData(data)
        encoded_prediction = np.argmax(model_repository[HarService.current_model_key].predict(input_data), axis=1)
        decoded_prediction = le.inverse_transform(encoded_prediction)[0]
        return {
            'prediction': decoded_prediction,
            'current_model_key': HarService.current_model_key
        }

    # Pre process data
    @staticmethod
    def preProcessData(data):
        df = data[HarService.available_sensors]
        df = (df - normalization_min) / (normalization_max - normalization_min)
        df = df.round(4)
        values = df.values
        input_data = values.reshape(1, values.shape[0] * len(HarService.available_sensors))
        return input_data

    # Load the model repository
    @staticmethod
    def loadModels():
        global models
        print('Loading model repository')
        with open('../models.json') as file:
            models = json.load(file)
        for model in models:
            model_repository[model['key']] = keras.models.load_model("../models/" + model['path'])
        print('Successfully loaded the model repository')

    @staticmethod
    def monitor(status):
        devices = status
        sensors = []
        for device in devices:
            if device['name'] == 'phone':
                if device['isAvailable']:
                    sensors.extend(['phone-accel-x', 'phone-accel-y', 'phone-accel-z'])
            elif device['name'] == 'watch':
                if device['isAvailable']:
                    sensors.extend(['watch-accel-x', 'watch-accel-y', 'watch-accel-z'])
        # Check if the contextual parameters has been changed
        if collections.Counter(HarService.available_sensors) != collections.Counter(sensors):
            HarService.available_sensors = sensors
            HarService.analyse(sensors)

    @staticmethod
    def analyse(sensors):
        suitable_models = []
        # Choose suitable models by comparing the supported sensor list with the available sensor list
        for model in models:
            if collections.Counter(model['sensors']) == collections.Counter(sensors):
                suitable_models.append(model)
        HarService.plan(suitable_models)

    @staticmethod
    def plan(suitable_models):
        selected_model_key = None
        if len(suitable_models) != 0:
            # Sort models and pick the best one
            suitable_models.sort(key=HarService.accuracyComparator, reverse=True)
            HarService.plan(suitable_models[0]['key'])
        if HarService.current_model_key != selected_model_key:
            HarService.execute(selected_model_key)

    @staticmethod
    def execute(selected_model_key):
        # Switch the model
        HarService.current_model_key = selected_model_key

    @staticmethod
    def accuracyComparator(model):
        return model['accuracy']
