# myforest-pywws-container

Provides a [Docker container](https://hub.docker.com/r/myforest/pywws/) for [pywws](https://github.com/jim-easterbrook/pywws). As ever, many thanks to Jim Easterbrook.
## Caveats
Sadly we use `--priviliged` to give access to the USB devices.
## Test
You can test your weather station like this:
```docker run --privileged myforest/pywws pywws-testweatherstation```
## Run
Following Jim's example using `~/weather/data`, you can gather data onto your local file system like this:
```docker run --privileged myforest/pywws -v ~/weather/data:/var/data pywws-hourly /var/data```
## See Also
For an alpine-based image see [duckfullstop/pywws-docker](https://hub.docker.com/r/duckfullstop/pywws-docker/)
