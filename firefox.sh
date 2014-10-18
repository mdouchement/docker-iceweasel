#!/bin/bash
ID=$(sudo docker run --privileged -d -p 22 mdouchement/firefox:33.0 /usr/sbin/sshd -D)
ID=${ID:0:12}
echo id: $ID
echo mdp: root
#PORT=$(sudo docker port $ID 22)
PORT=$(sudo docker inspect $ID | grep HostPort | tail -1 | awk '{print $2}' | tr -d '",\n’')

ssh -X root@localhost -p ${PORT} firefox -private-window
