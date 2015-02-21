FROM debian:wheezy
MAINTAINER mdouchement

RUN apt-get update && apt-get upgrade -y

RUN apt-get -y install wget
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN /usr/sbin/sshd
RUN echo "root:root" | chpasswd

RUN echo 'deb http://http.debian.net/debian wheezy main contrib non-free' >> /etc/apt/sources.list
RUN echo 'deb http://security.debian.org/ wheezy/updates main contrib non-free' >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y flashplugin-nonfree
RUN apt-get install -y iceweasel
