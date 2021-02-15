let socket = null;
let phoneX = [];
let phoneY = [];
let phoneZ = [];
let watchX = [];
let watchY = [];
let watchZ = [];
let lables = [];
let chart;
const activities = {
    "A": "walking",
    "B": "jogging",
    "C": "stairs",
    "D": "sitting",
    "E": "standing",
}

$(document).ready(function () {
    initializeChart();
    // Connect to the Socket.IO server.
    socket = io();

    socket.on('model_change', function (msg, cb) {
        console.log(msg)
        if (cb)
            cb();
    });

    // Update the prediction
    socket.on('prediction', function (msg, cb) {
        let activity = 'No suitable model available'
        if (msg.data.prediction !== null) {
            activity = activities[msg.data.prediction]
        }
        $('#currentActivity').text(activity);
        if (cb)
            cb();
    });

    // Update the prediction
    socket.on('instructions', function (msg, cb) {
        console.log(msg)
        $('#currentActivity').text(activity);
        if (cb)
            cb();
    });

    // Display Sensor data on the graph
    socket.on('sensor_data', function (msg, cb) {
        const phoneData = JSON.parse(msg.data)[0];
        $('#phoneData').html(JSON.stringify(phoneData));
        $('#selectedModel').text(msg.current_model_key);
        lables.push(phoneData['timestamp']);
        phoneX.push(phoneData['phone-accel-x']);
        phoneY.push(phoneData['phone-accel-y']);
        phoneZ.push(phoneData['phone-accel-z']);
        watchX.push(phoneData['watch-accel-x']);
        watchY.push(phoneData['watch-accel-y']);
        watchZ.push(phoneData['watch-accel-z']);
        if (lables.length > 300) {
            lables.shift();
            phoneX.shift();
            phoneY.shift();
            phoneZ.shift();
            watchX.shift();
            watchY.shift();
            watchZ.shift();
        }
        chart.update();
        if (cb)
            cb();
    });

    $('form#disconnect').submit(function (event) {
        socket.emit('disconnect_request');
        return false;
    });
});

const initializeChart = () => {
    const ctx = document.getElementById('myChart').getContext('2d');
    document.getElementById('myChart').height = 80;
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

const sendDeviceData = () => {
    // Prepare the contextual parameters
    const phoneAvailability = $('#phoneAvailability').is(":checked");
    const watchAvailability = $('#watchAvailability').is(":checked");

    const data = {
        goal: $('#goal').val(),
        devices: [
            {
                name: 'watch',
                isAvailable: watchAvailability,
                sensors: [
                    {
                        name: 'watch-accel-x',
                        isAvailable: $('#watch-accel-x').is(":checked")
                    },
                    {
                        name: 'watch-accel-y',
                        isAvailable: $('#watch-accel-y').is(":checked")
                    },
                    {
                        name: 'watch-accel-z',
                        isAvailable: $('#watch-accel-z').is(":checked")
                    },
                ]
            },
            {
                name: 'phone',
                isAvailable: phoneAvailability,
                sensors: [
                    {
                        name: 'phone-accel-x',
                        isAvailable: $('#phone-accel-x').is(":checked")
                    },
                    {
                        name: 'phone-accel-y',
                        isAvailable: $('#phone-accel-y').is(":checked")
                    },
                    {
                        name: 'phone-accel-z',
                        isAvailable: $('#phone-accel-z').is(":checked")
                    },
                ]
            }
        ]
    }
    socket.emit('device_status', data);
}

const onPhoneAvailabilityChange = () => {
    if ($('#phoneAvailability').is(":checked")) {
        $('#phone-accel-x').removeAttr("disabled");
        $('#phone-accel-y').removeAttr("disabled");
        $('#phone-accel-z').removeAttr("disabled");
    } else {
        $('#phone-accel-x').attr("disabled", true);
        $('#phone-accel-y').attr("disabled", true);
        $('#phone-accel-z').attr("disabled", true);
    }
}

const onWatchAvailabilityChange = () => {
    if ($('#watchAvailability').is(":checked")) {
        $('watch-accel-x').removeAttr("disabled");
        $('watch-accel-y').removeAttr("disabled");
        $('watch-accel-z').removeAttr("disabled");
    } else {
        $('watch-accel-x').attr("disabled", true);
        $('watch-accel-y').attr("disabled", true);
        $('watch-accel-z').attr("disabled", true);
    }
}