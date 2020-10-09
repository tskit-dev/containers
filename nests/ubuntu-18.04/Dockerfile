FROM docker.io/ubuntu:18.04

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

RUN apt-get clean

