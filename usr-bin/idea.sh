#!/usr/bin/env bash

# start intellij as user
xhost +

# setuid - security wrappers module 
sudo -u BoBrueck -- env DISPLAY=:0.0 /opt/idea/bin/idea.sh

