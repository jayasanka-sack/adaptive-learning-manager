# Adaptive Learning for resilient Activity Recognition

From activity recognition to object tracking and language processing, there has been an explosive growth in the use of machine learning (ML) to train models capable of translating data into meaningful information. Software systems that use these models to provide core functionality need to take into account their capabilities and performance characteristics, which depend on different contextual factors such as the available input data types, the specificity of data used to train the ML models, and computing resource constraints. This can be achieved by using an adaptive architecture in ML-based software systems. Building on prior research for self-adaptation for ML-based systems, this repo presents a reference architecture implementation for an Adaptive Learning Framework (ALF). 

## License
We make this implementation of the adaptive learning framework available under a MIT License

Copyright © 2022 Jayasanka Weerasinghe, Arosha Bandara

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Quick start

1. Install docker

    Follow [this guide](https://docs.docker.com/get-docker/) to install docker.

2. Run containers* 

    In a terminal, execute: `docker-compose up`

3. Visit http://localhost:8000/static/dashboard.html from your browser.
4. Try changing the context by enabling devices, change goals, or change battery rules. The model configuration will change according to the provided context.

**\*Currently, the alf docker image does not support Apple M1 devices.**

**![](https://lh4.googleusercontent.com/iWctPg3bUjAo4aJqF2GJnGezpTzqjBMXRWKR3v_D0YEqC1SkE9HwGlaOqFwhBjLqngBogOEyC76xEKtbyYCTSRP-6CLNJFrUkAna-FnjT5wvIHUxMTn_irhWJmaBEMio6OjRIf4_)**

## Deploy a new model configuration
The model repository is a crucial component of the Adaptive Learning Manager. It is implemented as physical file storage. Each model configuration should be deployed as a specific directory and present in the `/adapation_manager/models` directory. 

### 1. Copy the `model` directory to the models repository 

The structure of the model directory is defined as follows:

The Directory should be named with the model configuration key. The model directory should contain the exported model files. You can use your own technologies to train and export and you can use multiple models in a single model configuration. In the current implementation, we used Keras to train the models. There should be a python script named `__init__.py`. The script should contain relevant codes to load the model. This script will be executed when the system starts.

There should be a mandatory function named `predict` which accepts a pandas data frame with relevant sensor data. The function should return a string that is the label of the predicted activity. The activity labels are as follows:
```
"A": "walking"
"B": "jogging"
"C": "stairs"
"D": "sitting"
"E": "standing"
```
However, these labels are also independent of the system. You can use your own labels, the labels should be reflected in the end application.

Use [this example script](https://github.com/jayasanka-sack/adaptive-learning-manager/blob/main/adapative_learning_manager/models/phone/__init__.py) as a reference.

You have the freedom to write any code within the prediction method. As an example, [this example script](https://github.com/jayasanka-sack/adaptive-learning-manager/blob/main/adapation_manager/models/phone/__init__.py)  has defined an extra method to pre-process the data. Moreover, you can write the prediction function to predict using more than one model.

Copy the directory to [`/adapative_learning_manager/models`](https://github.com/jayasanka-sack/adaptive-learning-manager/tree/main/adapative_learning_manager/models) directory. 

### 2. Update the `model_config.json` file with model configuration metadata

Whenever a you deploy a new model configuration, the `adapative_learning_manager/model_config.json` file in the root of the adaptation_manager also should be updated with model metadata.

This is a sample metadata for a model configuration:
```json
{
    "key": "model_config_01",
    "name": "Model Config 01",
    "inputs": [
      "input_a",
      "input_b",
      "input_c"
    ],
    "path": "models.config_01",
    "custom_key_1": "custom_value_1",
    "custom_key_2": "custom_value_2"
}
```
The required keys are defined as below:
| Key       | Type          |  Description| 
|--|--|--|
|key        | `string`      | The key of the model configuration    |
|name       |`string`       |Name of the model configuration        |
|inputs     |`string[]`     |Array of input keys                    |
|path       |`string`       |Path to the config module                    |

You can add your own custom keys that are being used when choosing the most suitable model depending on the goal.  


## Configuring simulator data

The simulator data is stored at `/example/data_compact.csv` file. You can replace the simulator data with the following column order:


1.  `activity label`
1. `timestamp`
1.  `watch_accel_x`
1. `watch_accel_y`
1. `watch_accel_z`
1. `phone_accel_x`
1. `phone_accel_y`
1. `phone_accel_z`


## Integrating different client applications
Given that the provided client is an example, you can integrate ALF with your own applications. The provided two REST API endpoints can be used to communicate with ALF.

1. POST /context
    The first endpoint is to send contextual parameters from the application.
The request contains the current device data, user goals. The data will be redirected to Adaptive Learning Manager from the controller.
Sample request:
    ```json
    {
        "goal":"ACCURACY",
        "inputs":[
          "input_a",
          "input_b"
        ]
    }
    ```

    Sample response:
    ```json
    {
        "key": "model_config_01",
        "name": "Model Config 01",
        "inputs": [
          "input_a",
          "input_b",
          "input_c"
        ],
        "path": "models.config_01",
        "custom_key_1": "custom_value_1",
        "custom_key_2": "custom_value_2"
    }
    ```
2. POST /predict 
    The application can send a data window that contains sensor data populated according to the instructions provided by the system (ex: inputs, sampling rate, window size, etc.).
        Sample request: 
    ```json
    "columns": [
        "input_a",
        "input_b",
        "input_c"
    ],
    "data": [
        [
            "7.931840400000001",
            "-1.0452187",
            "-2.2301989"
        ],
    ]
    ```
    Sample response:
    ```json
    {
        "prediction": "A"
    }
    ```

## Adding new goals

Edit the [https://github.com/jayasanka-sack/adaptive-learning-manager/blob/main/adapative_learning_manager/goals/__init__.py](/goals/__init__.py) file to add a new goal. You should write your own logic to pick the best model config from a provided set of configs.


    
## Registering new inputs
Update the `model_config.json` file with new inputs.

