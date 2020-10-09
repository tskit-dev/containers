FROM docker.io/ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN yes | unminimize

RUN apt-get update

RUN apt-get -y install \
        man-db \
        sudo \
        less \
        vim \
        git \
        python3-pip

COPY cnest-user-setup /usr/sbin
RUN chmod +x /usr/sbin/cnest-user-setup 

RUN apt-get clean

