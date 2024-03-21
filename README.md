Simple test HTTP (Hello World)
===========

<img src="https://raw.githubusercontent.com/j796160836/docker-simple-test-http/master/screenshot/image01.png" width="400" />

This image is forked from crccheck/hello-world image.   
The differance is add hostname as identifier and change expose port to 80.  

This is a simple image that just gives a response on port 80. Use this to
test your web orchestration. It's small enough to fit on one floppy disk:

```bash
$ docker images | grep simple-test-http
REPOSITORY               TAG       IMAGE ID        CREATED          VIRTUAL SIZE
j796160836/simple-test-http     latest    a88b0d92c4ac    4 months ago     1.13MB
```


Sample Usage
------------

### Starting a web server on port 80

```bash
docker run -d --name web-test -p 80:80 j796160836/simple-test-http
```

If you happen to run into `WARNING: The requested image's platform (linux/amd64) does not match the detected host platform (linux/arm64/v8) and no specific platform was requested\n  exec /bin/sh: exec format error` add one of the pre-built platforms like this:

```bash
docker run --platform linux/arm64  -d -p 80:80 j796160836/simple-test-http
```

You can now interact with this as if it were a dumb web server:

```
$ curl localhost
<xmp>
Hello World
Hostname: 62b76e65d550
(...omitted)
</xmp>
```

That's it! Enjoy 😄
