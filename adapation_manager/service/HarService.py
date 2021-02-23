import json
import collections
import importlib
from PrologMT import PrologMT

prolog = PrologMT()
prolog.consult("knowledge_base.pl")
prolog.assertz("active(watch)")
prolog.assertz("active(phone)")
# Model metadata
models = None
model_repository = {}
current_status = {
    'goal': 'ACCURACY',
    'model': None,
    'devices': []
}
registered_devices = ['phone', 'watch']


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
        for key, meta in models.items():
            model_repository[key] = importlib.import_module("models." + meta['path'])
        print('Successfully loaded the model repository')

    @staticmethod
    def monitor(status):
        goal = status['goal']
        devices = status['devices']
        available_device_list = []
        for device in devices:
            if device['isAvailable']:
                available_device_list.append(device['key'])
            if bool(list(prolog.query("active("+device['key']+")"))):
                if not device['isAvailable']:
                    prolog.retract("active("+device['key']+")")
            else:
                if device['isAvailable']:
                    prolog.assertz("active(" + device['key'] + ")")
        is_adapted = False
        # Check if the contextual parameters has been changed
        if current_status['goal'] != goal or collections.Counter(current_status['devices']) != collections.Counter(available_device_list):
            current_status['goal'] = goal
            suitable_models = HarService.analyse()
            selected_model = HarService.plan(suitable_models)
            if (bool(current_status['model'] is None) != bool(selected_model is None)) \
                    or (not ((current_status['model'] is None) and (selected_model is None)) and current_status['model']['key'] != selected_model['key']):
                current_status['devices'] = available_device_list
                HarService.execute(selected_model)
                is_adapted = True
        # Mark the enabled sensors
        # if current_status['model'] is not None:
        #     for sensor in current_status['model']['sensors']:
        #         current_status['sensor_data'][sensor]['is_enabled'] = True
        return {
            'is_adapted': is_adapted,
            'current_status': current_status
        }

    @staticmethod
    def analyse():
        suitable_models = []
        for soln in prolog.query("suitable(X)"):
            suitable_models.append(models[soln["X"]])
            print(soln["X"], "is suitable")
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

    @staticmethod
    def accuracyComparator(model):
        return model['accuracy']

    @staticmethod
    def energyComparator(model):
        return model['energy']
