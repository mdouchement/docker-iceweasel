FROM debian:jessie
MAINTAINER mdouchement

RUN apt-get update && apt-get upgrade -y

RUN echo 'deb ftp://ftp.fr.debian.org/debian/ jessie main contrib non-free' >> /etc/apt/sources.list
#RUN echo 'deb http://security.debian.org/ jessie/updates main contrib non-free' >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y flashplugin-nonfree --no-install-recommends
RUN apt-get install -y iceweasel --no-install-recommends

CMD ["iceweasel", "-private-window"]
