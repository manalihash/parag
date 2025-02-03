#!/bin/bash
set -e



docker ps
docker stop paragpatil01/hello-world
docker rm paragpatil01/hello-world
docker rmi paragpatil01/hello-world
#pull the docker image from docker hub
docker pull paragpatil01/hello-world

#run the docker image as a container 
docker run -d -p 5000:5000 paragpatil01/hello-world
