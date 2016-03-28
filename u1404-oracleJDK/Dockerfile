#
# Simply prepares the CSGF development environment installing oracle JDK 7 on
# Ubuntu 14.04
#

FROM ubuntu:trusty
MAINTAINER Mario Torrisi <mario.torrisi@ct.infn.it>

RUN echo debconf shared/accepted-oracle-license-v1-1 select true && \ |
  debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true && \ |
  debconf-set-selections

RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common && \
    add-apt-repository ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y --no-install-recommends oracle-java7-installer && \
    rm -rf /var/lib/apt/lists/*
