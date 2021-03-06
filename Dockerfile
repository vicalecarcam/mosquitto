FROM ubuntu
MAINTAINER patriciochavez

RUN apt update && apt install -y mosquitto

COPY mosquitto.conf /etc/mosquitto/conf.d/
COPY passwd /etc/mosquitto

EXPOSE 1883

ENTRYPOINT ["/usr/sbin/mosquitto", "-c", "/etc/mosquitto/conf.d/mosquitto.conf"]

