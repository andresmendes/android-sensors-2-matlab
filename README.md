# android-sensors-2-matlab
Read android phone sensors in Matlab via UDP stream using [Sensorstream IMU+GPS](https://play.google.com/store/apps/details?id=de.lorenz_fenster.sensorstreamgps&hl=en) app.

## Instructions

* Download the repository files by clicking [here](https://github.com/andresmendes/android-sensors-2-matlab/archive/master.zip)
* Save the file "androidSensor2Matlab.m" in the MATLAB _path_ or add your current path to the _paths list_. More details: [help path](http://www.mathworks.com/help/matlab/ref/path.html).
* Download the [Sensorstream IMU+GPS](https://play.google.com/store/apps/details?id=de.lorenz_fenster.sensorstreamgps&hl=en) app in your phone
* Connect phone and notebook to the same wifi network
* Set phoneIP and port in androidSensor2Matlab.m
* Set notebook IP and target port in [Sensorstream IMU+GPS](https://play.google.com/store/apps/details?id=de.lorenz_fenster.sensorstreamgps&hl=en) app
* Choose the desired sensors in the Toggle Sensors pane.
* Switch Stream ON
* Run from command window: `androidSensors2Matlab`

## Dependencies

[Instrument Control Toolbox](http://www.mathworks.com/products/instrument/)

## Sensors

Supported sensors (androidSensor2Matlab.m)

* Accelerometer

Sensors available from app.

* Accelerometer
* Gyroscope
* Magnetic Field
* GPS position
* Orientation
* Linear Accel.
* Gravity
* Rotation Vect.
* Pressure
* Battery Temp.
