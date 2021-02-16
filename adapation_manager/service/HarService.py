import json
import collections
import importlib

# Model metadata
models = None
model_repository = {}
current_status = {
    'goal': 'ACCURACY',
    'sensor_data': {},
    'model': None
}


class HarService:

    # Predict activities using provided sensor data
    @staticmethod
    def predict(data):
        if current_status['model'] is None:
            return {
                'prediction': None,
                'current_model_key': None
            }
        # Predict the activity from the model
        return {
            'prediction': model_repository[current_status['model']['key']].predict(data),
            'current_model_key': current_status['model']['key']
        }

    # Load the model repository
    @staticmethod
    def loadModels():
        global models
        print('Loading model repository')
        with open('models.json') as file:
            models = json.load(file)
        for model in models:
            model_repository[model['key']] = importlib.import_module("models." + model['path'])
        print('Successfully loaded the model repository')

    @staticmethod
    def monitor(status):
        goal = status['goal']
        sensors = status['sensors']
        is_adapted = False
        # Check if the contextual parameters has been changed
        if current_status['goal'] != goal \
                or collections.Counter(current_status['sensor_data'].keys()) != collections.Counter(sensors):
            current_status['goal'] = goal
            suitable_models = HarService.analyse(sensors)
            selected_model = HarService.plan(suitable_models)
            if (bool(current_status['model'] is None) != bool(selected_model is None)) \
                    or (not ((current_status['model'] is None) and (selected_model is None)) and current_status['model']['key'] != selected_model['key']):
                sensor_data = {}
                for sensor in sensors:
                    sensor_data[sensor] = {
                        'is_enabled': False
                    }
                current_status['sensor_data'] = sensor_data
                HarService.execute(selected_model)
                is_adapted = True
        return {
            'is_adapted': is_adapted,
            'current_status': current_status
        }

    @staticmethod
    def analyse(sensors):
        suitable_models = []
        # Choose suitable models by comparing the supported sensor list with the available sensor list
        for model in models:
            if set(model['sensors']).issubset(set(sensors)):
                suitable_models.append(model)
        return suitable_models

    @staticmethod
    def plan(suitable_models):
        selected_model = None
        if len(suitable_models) != 0:
            # Sort models
            if current_status['goal'] == "ACCURACY":
                suitable_models.sort(key=HarService.accuracyComparator, reverse=True)
                selected_model = suitable_models[0]
            elif current_status['goal'] == "ENERGY":
                suitable_models.sort(key=HarService.energyComparator, reverse=False)
                selected_model = suitable_models[0]
        return selected_model

    @staticmethod
    def execute(selected_model):
        # Switch the model
        current_status['model'] = selected_model
        # Mark the enabled sensors
        for sensor in selected_model['sensors']:
            current_status['sensor_data'][sensor]['is_enabled'] = True

    @staticmethod
    def accuracyComparator(model):
        return model['accuracy']

    @staticmethod
    def energyComparator(model):
        return model['energy']
