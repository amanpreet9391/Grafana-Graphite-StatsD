FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install npm nodejs devscripts debhelper dh-systemd git
ADD . /tmp/
WORKDIR /tmp/
RUN git clone https://github.com/etsy/statsd.git
ADD . /statsd/
WORKDIR /statsd
CMD ["dpkg","buildpackage"]
CMD ["statsd_0.8.0-1_all.deb","install"]
CMD ["systemctl start statsd.service"]
