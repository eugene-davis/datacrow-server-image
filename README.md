# datacrow-server-image

A simple [distroless-based](https://github.com/GoogleContainerTools/distroless) image to provide a [Datacrow](http://www.datacrow.net/) server.

## Building

As [Fosshub doesn't allow automated downloads](https://macmule.com/2019/03/17/fosshub-autopkg/), please download and extract the "Portable Server Edition  (Headless)" from [Fosshub](https://www.fosshub.com/Data-Crow.html).
This should result in a `dc-server`  directory.

Finally build with `docker  build  . -t  datacrow`.

### Increasing available memory

In  order to increase (or  decrease) the  memory available to Datacrow, edit `-Xmx1024m` in the  `ENTRYPOINT` line in `Dockerfile` and set your  desired amount of memory.

## Usage

### Data

This container provides a `data` volume for storing data from Datacrow.
This can be mounted to the filesystem or to another volume.

## Ports

Datacrow requires  three ports:

* main server port - 9000
* image server port - 9001
* web server port - 8080

### Example

```bash
docker run -v /datacrow/data:/data -p 9000:9000 -p 9001:9001 -p 8080:8080  datacrow
```

### Login

The container sets the default admin user `SA`.
After  deploying, you should set a new password.
