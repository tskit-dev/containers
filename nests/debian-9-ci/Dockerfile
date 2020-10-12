FROM docker.io/circleci/python:3.7-stretch

#circleci sets user to circleci, set it back to root
USER root

RUN apt-get update

RUN apt-get -y install python-dev libgsl0-dev

RUN pip3 install -r /opt/msprime/requirements/development.txt

RUN apt-get -y install libcunit1-dev libconfig-dev

RUN apt-get -y install ninja-build

# meson package on debian stretch (9) is too old
RUN pip3 install meson

RUN apt-get clean

COPY cnest-user-setup /usr/sbin
RUN chmod +x /usr/sbin/cnest-user-setup 

