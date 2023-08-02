#!/bin/bash
set -e

#pull the docker image from docker hub
docker pull paragpatil01/simple-pthon-flask-app

#run the docker image as a container 
docker run -d -p 5000:5000 paragpatil01/simple-pthon-flask-app
