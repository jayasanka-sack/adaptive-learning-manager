# Adaptive Learning for resilient Activity Recognition

From activity recognition to object tracking and language processing, there has been an explosive growth in the use of machine learning (ML) to train models capable of translating data into meaningful information. Software systems that use these models to provide core functionality need to take into account their capabilities and performance characteristics, which depend on different contextual factors such as the available input data types, the specificity of data used to train the ML models, and computing resource constraints. This can be achieved by using an adaptive architecture in ML-based software systems. Building on prior research for self-adaptation for ML-based systems, this repo presents a reference architecture implementation for an Adaptive Learning Framework (ALF). 

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

Use [this example script](https://github.com/jayasanka-sack/adaptive-learning-manager/blob/main/adapation_manager/models/phone/__init__.py) as a reference.

You have the freedom to write any code within the prediction method. As an example, [this example script](https://github.com/jayasanka-sack/adaptive-learning-manager/blob/main/adapation_manager/models/phone/__init__.py)  has defined an extra method to pre-process the data. Moreover, you can write the prediction function to predict using more than one model.

Copy the directory to [`/adapation_manager/models`](https://github.com/jayasanka-sack/adaptive-learning-manager/tree/main/adapation_manager/models) directory. 

### 2. Update the `models.json` file with model configuration metadata

Whenever a you deploy a new model configuration, the `adaptation_manager/models.json` file in the root of the adaptation_manager also should be updated with model metadata.

This is a sample metadata for a model configuration:
```json
{
"model_config_01": {
    "key": "model_config_01",
    "name": "Phone Accelerometer",
    "sensors": [
      "phone_accel_x",
      "phone_accel_y",
      "phone_accel_z"
    ],
    "accuracy": 68,
    "energy": 200,
    "frequency": 20,
    "interval": 10000,
    "path": "phone"
  }
}  
```
The keys are defined as below:
| Key       | Type          |  Description| 
|--|--|--|
|key        | `string`      | The key of the model configuration |
|name       |`string`       |Name of the model configuration|
|Sensors    |`string[]`     |Array of sensor keys|
| Accuracy  |`float `       |Accuracy in test data|
| Energy    | `float`       |Calculated power consumption in mAh|
| frequency |`int`          |Data frequency|
|interval   |`int`          |Number of milliseconds in an interval|
|path       |`string`       |Relative path to the model directory from the root.|


_The model metadata will be loaded into the knowledge component when the application starts. The metadata from the models.json file will be read and stored in a global variable as part of the knowledge component. Then it will load each model script as modules and store in a dictionary named model_repository. So, the predict method of a model can be accessible via:
`model_repository[“key”].predict()`_

## Configuring simulator data

The simulator data is stored at `/application/data_compact.csv` file. You can replace the simulator data with the following column order:


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

1. POST /monitor
    The first endpoint is to send contextual parameters from the application.
The request contains the current device data, user goals. The data will be redirected to Adaptive Learning Manager from the controller.
Sample request:
    ```json
    {
        "goal":"ACCURACY",
        "devices":[
          {
             "key":"watch",
             "name":"Watch",
             "isAvailable":true,
             "battery":45,
             "min_battery":20
          },
          {
             "key":"phone",
             "name":"Phone",
             "isAvailable":true,
             "battery":70,
             "min_battery":15
          }
        ]
    }
    ```

    Sample response:
    ```json
    {
        "model_config_02":{
           "key":"model_config_02",
           "name":"Watch Accelerometer",
           "sensors":[
              "watch_accel_x",
              "watch_accel_y",
              "watch_accel_z"
           ],
           "accuracy":72,
           "energy":300,
           "frequency":20,
           "interval":10000,
           "path":"watch"
        }
    }
    ```
2. POST /predict 
    The application can send a data window that contains sensor data populated according to the instructions provided by the system (ex: inputs, sampling rate, window size, etc.).
        Sample request: 
    ```json
    "columns": [
        "watch_accel_x",
        "watch_accel_y",
        "watch_accel_z"
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
    
## Registering new inputs

To add a new input add relavent rules to the [/adapation_manager/knowledge_base.pl](https://github.com/jayasanka-sack/adaptive-learning-manager/blob/152716a6db741940d21abb26dcfc4ff52b868cae/adapation_manager/knowledge_base.pl) file to specify when the input is `usable`. 

ex: `The phone_accel_x` is available when the `phone` is active is denoted by:
`usable(phone_accel_x) :- active(phone).`

Currently the availability of the inputs determined by the availability of the devices  (i.e. group of sensors). Therefore, the input should be falled under one or more devices. To register a device add it to the `registered_devices` variable in the [/adapation_manager/service/HarService.py](https://github.com/jayasanka-sack/adaptive-learning-manager/blob/152716a6db741940d21abb26dcfc4ff52b868cae/adapation_manager/service/HarService.py#L18) file. Also add dynamic prolog facts to the same file and other rules to the  `knowledge_base.pl` file. 

