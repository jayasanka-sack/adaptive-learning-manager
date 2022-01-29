import unittest
from service.PredictionService import PredictionService
from tests import TestModelConfig


class PredictionServiceTest(unittest.TestCase):

    def test_predict_when_no_config(self):
        service = PredictionService()
        prediction = service.predict(data=0)
        self.assertEqual(prediction, None)

    def test_predict(self):
        service = PredictionService()
        service.set_config_module(TestModelConfig, "")
        prediction = service.predict(data=[])
        self.assertEqual(prediction, "A")


if __name__ == '__main__':
    unittest.main()
