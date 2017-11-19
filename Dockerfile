#name of container: glider
#versison of container: 0.1.0
FROM ubuntu:16.04

RUN apt-get install software-properties-common && add-apt-repository ppa:longsleep/golang-backports && apt update && apt-get install golang-go

RUN /usr/lib/go-1.9/bin/go get -u github.com/nadoo/glider

RUN echo glider \$GLIDER_ARGS > /tmp/glider.sh

# Use baseimage-docker's init system.
CMD ["/bin/sh /tmp/glider.sh"]
