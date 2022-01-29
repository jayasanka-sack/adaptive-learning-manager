import unittest
from service.AdaptationManager import AdaptationManager
from tests import TestModelConfig
from service.PredictionService import PredictionService

test_modal_configs = [
    {
        'key': 'c-01',
        'name': 'Config 01',
        'inputs': [
            'input_a',
            'input_b',
            'input_c'
        ],
        'accuracy': 90,
        'energy': 10,
        'frequency': 20,
        'interval': 10000,
        'path': 'tests.TestModelConfig'
    },
    {
        'key': 'c-02',
        'name': 'Config 02',
        'inputs': [
            'input_a',
            'input_b',
            'input_d'
        ],
        'accuracy': 80,
        'energy': 20,
        'frequency': 20,
        'interval': 10000,
        'path': 'tests.TestModelConfig'
    },
    {
        'key': 'c-03',
        'name': 'Config 03',
        'inputs': [
            'input_a',
        ],
        'accuracy': 60,
        'energy': 5,
        'frequency': 20,
        'interval': 10000,
        'path': 'tests.TestModelConfig'
    }
]


class AdaptationManagerTest(unittest.TestCase):

    def test_load_modal_config(self):
        global test_modal_configs
        manager = AdaptationManager()

        manager.load_modal_configs(test_modal_configs)
        self.assertEqual(manager.model_configs, test_modal_configs)

        loaded_config_module = manager.model_config_modules[test_modal_configs[0]['key']]
        self.assertIsNotNone(loaded_config_module)
        self.assertIs(loaded_config_module, TestModelConfig)

    def test_monitor(self):
        manager = AdaptationManager()
        context = {
            'goal': 'ACCURACY',
            'inputs': ['input_a', 'input_b', 'input_c']
        }
        self.assertTrue(manager.monitor(context))
        self.assertFalse(manager.monitor(context))
        context = {
            'goal': 'POWER_CONSUMPTION',
            'inputs': ['input_a', 'input_b', 'input_c']
        }
        self.assertTrue(manager.monitor(context))
        context = {
            'goal': 'POWER_CONSUMPTION',
            'inputs': ['input_a', 'input_b']
        }
        self.assertTrue(manager.monitor(context))

    def test_analyse(self):
        manager = AdaptationManager()
        context = {
            'goal': 'ACCURACY',
            'inputs': ['input_a', 'input_b', 'input_c']
        }
        manager.model_configs = test_modal_configs
        manager.monitor(context)
        self.assertTrue(contains_same_config_keys(manager.analyse(), ['c-01', 'c-03']))
        context = {
            'goal': 'ACCURACY',
            'inputs': ['input_a', 'input_b']
        }
        manager.monitor(context)
        self.assertTrue(contains_same_config_keys(manager.analyse(), ['c-03']))

        context = {
            'goal': 'ACCURACY',
            'inputs': ['input_f']
        }
        manager.monitor(context)
        self.assertTrue(contains_same_config_keys(manager.analyse(), []))

    def test_plan(self):
        manager = AdaptationManager()
        manager.current_context['goal'] = "ACCURACY"
        self.assertEqual(manager.plan(test_modal_configs)['key'], 'c-01')
        manager.current_context['goal'] = "ENERGY"
        self.assertEqual(manager.plan(test_modal_configs)['key'], 'c-03')
        manager.current_context['goal'] = "NON_EXISTING_GOAL"
        self.assertEqual(manager.plan(test_modal_configs), None)

    def test_execute(self):
        prediction_service = PredictionService()
        manager = AdaptationManager(prediction_service)

        manager.load_modal_configs(test_modal_configs)
        manager.execute(test_modal_configs[0])
        self.assertIs(prediction_service.get_config_module(), TestModelConfig)
        self.assertIs(prediction_service.get_config_key(), test_modal_configs[0]['key'])
        manager.execute(None)
        self.assertIsNone(prediction_service.get_config_module())

    def test_adapt(self):
        manager = AdaptationManager()
        manager.load_modal_configs(test_modal_configs)
        context = {
            'goal': 'ACCURACY',
            'inputs': ['input_a', 'input_b']
        }
        result = manager.adapt(context)
        self.assertTrue(result['adapted'])
        self.assertEqual(result['current_model_config']['key'], 'c-03')

        # Send same context
        result = manager.adapt(context)
        self.assertFalse(result['adapted'])

        # Change inputs
        context = {
            'goal': 'ACCURACY',
            'inputs': ['input_a', 'input_b', 'input_c']
        }
        result = manager.adapt(context)
        self.assertTrue(result['adapted'])
        self.assertEqual(result['current_model_config']['key'], 'c-01')

        # Change goal
        context = {
            'goal': 'ENERGY',
            'inputs': ['input_a', 'input_b', 'input_c']
        }
        result = manager.adapt(context)
        self.assertTrue(result['adapted'])
        self.assertEqual(result['current_model_config']['key'], 'c-03')

        # Change context which matches the same modal
        context = {
            'goal': 'ACCURACY',
            'inputs': ['input_a']
        }
        result = manager.adapt(context)
        self.assertFalse(result['adapted'])

        # Non-existing goal
        context = {
            'goal': 'NON_EXISTING_GOAL',
            'inputs': ['input_a']
        }
        result = manager.adapt(context)
        self.assertTrue(result['adapted'])
        self.assertIsNone(result['current_model_config'])

        # Reset context and remove inputs
        context = {
            'goal': 'ENERGY',
            'inputs': ['input_a', 'input_b', 'input_c']
        }
        manager.adapt(context)
        context = {
            'goal': 'ACCURACY',
            'inputs': []
        }
        result = manager.adapt(context)
        self.assertTrue(result['adapted'])
        self.assertIsNone(result['current_model_config'])


def contains_same_config_keys(configs, keys):
    keys_in_config = []
    for config in configs:
        keys_in_config.append(config['key'])
    return keys_in_config == keys


if __name__ == '__main__':
    unittest.main()
