#!/bin/bash
ID=$(docker run --privileged -d -p 22 mdouchement/iceweasel:latest /usr/sbin/sshd -D)
ID=${ID:0:12}
echo id: $ID
echo mdp: root
#PORT=$(sudo docker port $ID 22)
PORT=$(docker inspect $ID | grep HostPort | tail -1 | awk '{print $2}' | tr -d '",\n’')

ssh -X root@localhost -p ${PORT} iceweasel -private-window
