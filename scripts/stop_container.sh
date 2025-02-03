#!/bin/bash
set -x

#strop the container (if any running)
# containerid=`docker ps | awk -F " " '{print $1}'`
# docker stop -f $containerid

# sudo docker ps
sudo docker stop paragpatil01/hello-world
sudo docker rmi paragpatil01/hello-world

echo "hello "