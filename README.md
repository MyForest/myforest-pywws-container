# myforest-pywws-container
Provide Docker container for pywws:

https://hub.docker.com/r/myforest/pywws/

Find out more about pywws here:

https://github.com/jim-easterbrook/pywws

As ever, many thanks to Jim Easterbrook.

Sadly we use –priviliged to give access to the USB devices.

You can test your weather station like this:

docker run –privileged myforest/pywws pywws-testweatherstation

Following Jim's example using ~/weather/data, you can gather data onto your local file system like this:

docker run –privileged myforest/pywws -v ~/weather/data:/var/data pywws-hourly /var/data
