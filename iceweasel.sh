#!/bin/bash

mkdrir -p /tmp/dcrctn
docker run -v /tmp/dcrctn:/root/Downloads -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY mdouchement/iceweasel:latest