FROM ubuntu:precise
MAINTAINER mdouchement

RUN apt-get update && apt-get upgrade -y
RUN apt-get -qy install python-software-properties software-properties-common

RUN apt-get -y install wget
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN /usr/sbin/sshd
RUN echo "root:root" | chpasswd

RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) restricted"
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) multiverse"
RUN apt-get update
RUN apt-get install -y flashplugin-installer
RUN apt-get install -y flashplugin-nonfree
RUN apt-get install -y firefox
