FROM busybox
MAINTAINER Chris <c@crccheck.com>

ADD index.html /www/index.html

EXPOSE 8000

# Create a basic webserver and sleep forever
CMD sed -i -e 's/Hello World/Hello World\nHostname: '$(hostname)'/g' /www/index.html ; httpd -p 8000 -h /www; tail -f /dev/null

