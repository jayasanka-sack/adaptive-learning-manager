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
LABEL = 'ActivityEncoded'
available_sensors = ['phone-accel-x', 'phone-accel-y', 'phone-accel-z']
normalization_max = 66.615074
normalization_min = -78.47761
models = None
model_repository = {}
current_model_key = None


class HarService:

    @staticmethod
    def predict(data):
        input_data = HarService.preProcessData(data)
        if current_model_key is None:
            return {
                'prediction': None,
                'current_model_key': current_model_key
            }
        encoded_prediction = np.argmax(model_repository['currentModel'].predict(input_data), axis=1)
        decoded_prediction = le.inverse_transform(encoded_prediction)[0]
        return {
            'prediction': decoded_prediction,
            'current_model_key': current_model_key
        }

    @staticmethod
    def preProcessData(data):
        df = data[available_sensors]
        df = (df - normalization_min) / (normalization_max - normalization_min)
        df = df.round(4)
        values = df.values
        input_data = values.reshape(1, values.shape[0] * len(available_sensors))
        return input_data

    @staticmethod
    def loadModels():
        global models
        with open('../models.json') as file:
            models = json.load(file)
        for model in models:
            model_repository[model['key']] = keras.models.load_model("../models/" + model['path'])

    @staticmethod
    def monitor(status):
        devices = json.loads(status)
        global available_sensors
        sensors = []
        for device in devices:
            if device == 'phone':
                if device['isAvailable']:
                    sensors.extend(['phone-accel-x', 'phone-accel-y', 'phone-accel-z'])
            elif device == 'watch':
                if device['isAvailable']:
                    sensors.extend(['watch-accel-x', 'watch-accel-y', 'watch-accel-z'])
        if collections.Counter(available_sensors) != collections.Counter(sensors):
            HarService.analyse(status)
            available_sensors = sensors

    @staticmethod
    def analyse(status):
        suitable_models = []
        # Choose suitable models by comparing the supported sensor list with the available sensor list
        for model in models:
            if collections.Counter(model['sensors']) != collections.Counter(available_sensors):
                suitable_models.append(model)
        if len(suitable_models) == 0:
            HarService.plan(None)
        else:
            # Sort models
            suitable_models.sort(key=HarService.accuracyComparator, reverse=True)
            HarService.plan(suitable_models[0]['key'])

    @staticmethod
    def plan(selected_model_key):
        if current_model_key != selected_model_key:
            HarService.execute(selected_model_key)

    @staticmethod
    def execute(selected_model_key):
        global current_model_key
        current_model_key = selected_model_key

    @staticmethod
    def accuracyComparator(model):
        return model['accuracy']
