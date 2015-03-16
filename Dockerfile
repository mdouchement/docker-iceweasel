FROM debian:wheezy
MAINTAINER mdouchement

RUN apt-get update && apt-get upgrade -y

RUN echo 'deb http://http.debian.net/debian wheezy main contrib non-free' >> /etc/apt/sources.list
RUN echo 'deb http://security.debian.org/ wheezy/updates main contrib non-free' >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y flashplugin-nonfree --no-install-recommends
RUN apt-get install -y iceweasel --no-install-recommends

CMD ["iceweasel", "-private-window"]