from tensorflow import keras
from sklearn import preprocessing
import numpy as np

model = keras.models.load_model('../models/watch/model')
LABELS = ['A',
          'B',
          'C',
          'D',
          'E']

le = preprocessing.LabelEncoder()
le.fit(LABELS)


def preProcessData(data):
    # Normalization parameters
    normalization_max = 66.615074
    normalization_min = -78.47761
    df = data[["watch-accel-x", "watch-accel-y", "watch-accel-z"]]
    df = (df - normalization_min) / (normalization_max - normalization_min)
    df = df.round(4)
    values = df.values
    input_data = values.reshape(1, values.shape[0] * 3)
    return input_data


def predict(data):
    input_data = preProcessData(data)
    encoded_prediction = np.argmax(model.predict(input_data),
                                   axis=1)
    return le.inverse_transform(encoded_prediction)[0]