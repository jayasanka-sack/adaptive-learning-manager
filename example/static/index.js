let socket = null;
let phoneX = [];
let phoneY = [];
let phoneZ = [];
let watchX = [];
let watchY = [];
let watchZ = [];
let lables = [];
let phoneBattery = [];
let watchBattery = [];
let chart;
let batteryChart;
const activities = {
    "A": "walking",
    "B": "jogging",
    "C": "stairs",
    "D": "sitting",
    "E": "standing",
}

$(document).ready(function () {
    initializeSensorChart();
    initializeBatteryChart();
    // Connect to the Socket.IO server.
    socket = io();

    socket.on('model_change', function (msg, cb) {
        console.log(msg)
        if (cb)
            cb();
    });

    // Update the prediction
    socket.on('prediction', function (msg, cb) {
        let activity = '--'
        if (msg.data.prediction !== null) {
            activity = activities[msg.data.prediction]
        }
        $('#currentActivity').text(activity);
        if (cb)
            cb();
    });

    // Update the prediction
    socket.on('device_status_response', function (msg, cb) {
        const currentStatus = msg.data['current_status'];
        $('.usage').text('');
        // for (const [key, value] of Object.entries(currentStatus['sensor_data'])) {
        //     if (!value.is_enabled) {
        //         $(`#${key}-usage`).html('<i>(not in use)</i>')
        //     }
        // }
        if (currentStatus['model'] != null) {
            const model = currentStatus['model']
            $('#selectedModel').text(model['name']);
            $('#energy').text(model['energy']);
            $('#frequency').text(model['frequency']);
            $('#model-key').text(model['key']);
            $('#model-accuracy').text(model['accuracy']);
            $('#sensors').text('');
            model.sensors.forEach((sensor) => {
                $('#sensors').append(`<li>${sensor}</li>`);
            });
        } else {
            $('#selectedModel').text('No suitable model available');
            $('#energy').text('--');
            $('#frequency').text('--');
            $('#model-key').text('--');
            $('#model-accuracy').text('--');
            $('#sensors').text('');
            $('#currentActivity').text('--');
        }

        if (cb)
            cb();
    });

    // Display Sensor data on the graph
    socket.on('sensor_data', function (msg, cb) {
        const data = JSON.parse(msg.data)[0];
        const device_status = JSON.parse(msg.device_status);
        $('#phone_battery').text(device_status.phone.battery.toFixed(1));
        $('#watch_battery').text(device_status.watch.battery.toFixed(1));
        lables.push(data['timestamp']);
        phoneX.push(data['phone_accel_x']);
        phoneY.push(data['phone_accel_y']);
        phoneZ.push(data['phone_accel_z']);
        watchX.push(data['watch_accel_x']);
        watchY.push(data['watch_accel_y']);
        watchZ.push(data['watch_accel_z']);
        phoneBattery.push(device_status.phone.battery);
        watchBattery.push(device_status.watch.battery);
        if (lables.length > 300) {
            lables.shift();
            phoneX.shift();
            phoneY.shift();
            phoneZ.shift();
            watchX.shift();
            watchY.shift();
            watchZ.shift();
            phoneBattery.shift();
            watchBattery.shift();
        }
        chart.update();
        batteryChart.update();
        if (cb)
            cb();
    });

    $('form#disconnect').submit(function (event) {
        socket.emit('disconnect_request');
        return false;
    });
});

const initializeSensorChart = () => {
    const ctx = document.getElementById('chart-sensor-data').getContext('2d');
    document.getElementById('chart-sensor-data').height = 80;
    chart = new Chart(ctx, {
        type: 'line',
        // The data for the dataset
        data: {
            labels: lables,
            datasets: [{
                label: 'phone accel x',
                borderColor: 'rgb(255, 99, 132)',
                fill: false,
                data: phoneX
            },
                {
                    label: 'phone accel y',
                    borderColor: 'rgb(255,152,0)',
                    fill: false,
                    data: phoneY
                },
                {
                    label: 'phone accel z',
                    borderColor: 'rgb(0,166,255)',
                    fill: false,
                    data: phoneZ
                },
                {
                    label: 'watch accel x',
                    borderColor: 'rgb(34,166,179)',
                    fill: false,
                    data: watchX
                },
                {
                    label: 'watch accel y',
                    borderColor: 'rgb(56,103,214)',
                    fill: false,
                    data: watchY
                },
                {
                    label: 'watch accel z',
                    borderColor: 'rgb(75,101,132)',
                    fill: false,
                    data: watchZ
                }]
        },
        options: {}
    });
}


const initializeBatteryChart = () => {
    const ctx = document.getElementById('chart-battery-data').getContext('2d');
    document.getElementById('chart-battery-data').height = 80;
    batteryChart = new Chart(ctx, {
        type: 'line',
        // The data for the dataset
        data: {
            labels: lables,
            datasets: [
                {
                    label: 'Phone',
                    borderColor: 'rgb(0,166,255)',
                    fill: false,
                    data: phoneBattery
                },
                {
                    label: 'Watch',
                    borderColor: 'rgb(255,152,0)',
                    fill: false,
                    data: watchBattery
                }]
        },
        options: {
            bezierCurve: true,
            elements: {
                point: {
                    radius: 0
                }
            },
            scales: {
                yAxes: [{
                    ticks: {
                        suggestedMin: 0,
                        suggestedMax: 100
                    }
                }]
            }
        }
    });
}

const sendDeviceData = () => {
    // Prepare the contextual parameters
    const isPhoneAvailable = $('#phoneAvailability').is(":checked");
    const isWatchAvailable = $('#watchAvailability').is(":checked");
    const devices = [
        {
            key: 'watch',
            name: 'Watch',
            isAvailable: isWatchAvailable,
            min_battery: $('#watch-min-battery').val()
        },
        {
            key: 'phone',
            name: 'Phone',
            isAvailable: isPhoneAvailable,
            min_battery: $('#phone-min-battery').val()
        }
    ]
    const data = {
        goal: $('#goal').val(),
        devices
    }
    socket.emit('device_status', data);
}

const rechargeDevice = (device) => {
    socket.emit('recharge_device', device);
}