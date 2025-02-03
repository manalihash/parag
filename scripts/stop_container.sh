#!/bin/bash
set -e

#strop the container (if any running)
# containerid=`docker ps | awk -F " " '{print $1}'`
# docker rm -f $containerid

sudo docker ps
sudo docker stop paragpatil01/hello-world
sudo docker rmi paragpatil01/hello-world