import importlib
import json

import goals
from service.PredictionService import PredictionService


class AdaptationManager:
    def __init__(self, prediction_service=PredictionService()):
        self.prediction_service = prediction_service
        self.model_configs = None
        self.model_config_modules = {}
        self.current_context = {
            'goal': None,
            'inputs': []
        }

    def load_modal_configs(self, config=None):
        print('Loading model configurations')
        if config is None:
            with open('model_config.json') as file:
                self.model_configs = json.load(file)
        else:
            self.model_configs = config
        for config in self.model_configs:
            key = config['key']
            self.model_config_modules[key] = importlib.import_module(config['path'])

    def adapt(self, context):
        adapted = False
        context_changed = self.monitor(context)
        current_modal_config = self.get_current_model_config()
        if context_changed:
            suitable_model_configs = self.analyse()
            selected_model_config = self.plan(suitable_model_configs)
            if (bool(current_modal_config is None) != bool(selected_model_config is None)) \
                    or (
                    not ((current_modal_config is None) and (selected_model_config is None)) and current_modal_config[
                'key'] != selected_model_config['key']):
                self.execute(selected_model_config)
                adapted = True
        return {
            'adapted': adapted,
            'current_model_config': self.get_current_model_config()
        }

    def monitor(self, context):
        if context == self.current_context:
            return False
        else:
            self.current_context = context
            return True

    def analyse(self):
        suitable_configs = []
        for config in self.model_configs:
            if set(config['inputs']).issubset(self.current_context['inputs']):
                suitable_configs.append(config)
        return suitable_configs

    def plan(self, suitable_configs):
        if len(suitable_configs) == 0:
            return None
        else:
            return goals.pick_best_config(suitable_configs, self.current_context['goal'])

    def execute(self, model_config):
        module = None
        key = None
        if model_config is not None:
            key = model_config['key']
            module = self.model_config_modules[key]
        self.prediction_service.set_config_module(module, key)

    def get_current_model_config(self):
        key = self.prediction_service.get_config_key()
        if key is None:
            return None
        else:
            for config in self.model_configs:
                if config['key'] == key:
                    return config
        return None
