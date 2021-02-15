import json
import collections
import importlib

# Model metadata
models = None
model_repository = {}


class HarService:
    available_sensors = []
    current_model_key = None
    goal = None

    # Predict activities using provided sensor data
    @staticmethod
    def predict(data):
        if HarService.current_model_key is None:
            return {
                'prediction': None,
                'current_model_key': HarService.current_model_key
            }
        # Predict the activity from the model
        return {
            'prediction': model_repository[HarService.current_model_key].predict(data),
            'current_model_key': HarService.current_model_key
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
        devices = status['devices']
        goal = status['goal']
        sensors = []
        for device in devices:
            if device['isAvailable']:
                for sensor in device['sensors']:
                    if sensor['isAvailable']:
                        sensors.append(sensor['name'])
        # Check if the contextual parameters has been changed
        if HarService.goal != goal or collections.Counter(HarService.available_sensors) != collections.Counter(sensors):
            HarService.available_sensors = sensors
            HarService.goal = goal
            HarService.analyse(sensors)

    @staticmethod
    def analyse(sensors):
        suitable_models = []
        # Choose suitable models by comparing the supported sensor list with the available sensor list
        for model in models:
            if set(model['sensors']).issubset(set(sensors)):
                suitable_models.append(model)
        HarService.plan(suitable_models)

    @staticmethod
    def plan(suitable_models):
        selected_model_key = None
        if len(suitable_models) != 0:
            # Sort models
            if HarService.goal == "ACCURACY":
                suitable_models.sort(key=HarService.accuracyComparator, reverse=True)
                selected_model_key = suitable_models[0]['key']
            elif HarService.goal == "ENERGY":
                suitable_models.sort(key=HarService.energyComparator, reverse=False)
                selected_model_key = suitable_models[0]['key']
        if HarService.current_model_key != selected_model_key:
            HarService.execute(selected_model_key)

    @staticmethod
    def execute(selected_model_key):
        # Switch the model
        HarService.current_model_key = selected_model_key
        # sensors = []
        # for sensor in HarService.available_sensors:
        #     data = {
        #         'sensor': sensor,
        #         'disabled': sensor in models[selected_model_key].sensors
        #     }
        #     sensors.append(data)
        # app.emit('instructions',
        #  {'sensors': sensors},
        #  broadcast=True)

    @staticmethod
    def accuracyComparator(model):
        return model['accuracy']

    @staticmethod
    def energyComparator(model):
        return model['energy']
