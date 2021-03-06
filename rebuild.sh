#!/bin/bash
sudo docker ps --all | grep mosquitto | awk {'print $1}' | xargs sudo docker rm -f
sudo docker build -t patriciochavez/mosquitto .
sudo docker run -d --name mosquitto -p 1883:1883 patriciochavez/mosquitto
