class PredictionService:

    def __init__(self):
        self.current_config_module = None
        self.current_config_key = None

    def predict(self, data):
        if self.current_config_module is None:
            return None
        else:
            return self.current_config_module.predict(data)

    def set_config_module(self, model_config, key):
        self.current_config_module = model_config
        self.current_config_key = key

    def get_config_module(self):
        return self.current_config_module

    def get_config_key(self):
        return self.current_config_key
