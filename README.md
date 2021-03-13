# datacrow-server-image

A simple [distroless-based](https://github.com/GoogleContainerTools/distroless) image to provide a [Datacrow](http://www.datacrow.net/) server.

## Building

As [Fosshub doesn't allow automated downloads](https://macmule.com/2019/03/17/fosshub-autopkg/), please download and extract the "Portable Server Edition  (Headless)" from [Fosshub](https://www.fosshub.com/Data-Crow.html).
This should result in a `dc-server`  directory.

Finally build with `docker  build  . -t  datacrow`.

## Execution

```bash
docker run -v /datacrow/data:/data -p 9000:9000 -p 9001:9001 -p 8080:8080  datacrow
```
