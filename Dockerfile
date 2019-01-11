# Ubuntu 16.04 with HASS
FROM ubuntu:16.04

LABEL maintainer="SmartMou <yimouwang165@126.com>"

RUN apt update
RUN apt install -y vim gcc software-properties-common libffi-dev libssl-dev
RUN add-apt-repository -y -u ppa:jonathonf/python-3.6
RUN apt install -y python3.6 python3.6-dev
RUN ln -s /usr/bin/python3.6 /usr/bin/python

RUN pip install --no-cache-dir homeassistant 
