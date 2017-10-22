FROM ubuntu:latest as my_python
MAINTAINER Tiago Cardoso <tiagocardosos@gmail.com>

# update
RUN apt-get update -y
RUN apt-get install -y software-properties-common build-essential python-pip python-dev python3 curl openssl

# install python3
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update -y
RUN apt-get install -y python3.6 libpython3.6 python3-pip
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 2
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
RUN rm /usr/bin/python3
RUN ln -s python3.6 /usr/bin/python3

# Add a /app volume
VOLUME ["/Users/tiagocardosos/projects/python"]
# Define working directory
WORKDIR /projects