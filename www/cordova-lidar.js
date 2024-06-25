var exec = require('cordova/exec');

exports.isLiDARAvailable = function ( success, error) {
    exec(success, error, 'cordova-lidar', 'isLiDARAvailable', []);
};
