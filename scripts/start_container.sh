#!/bin/bash
# 

#!/bin/bash
set -e

# List running containers
docker ps

containerid=`docker ps | awk -F " " '{print $1}'`
docker stop -f $containerid
# Pull the latest image from Docker Hub
docker pull paragpatil01/hello-world

# Run the container with a fixed name
docker run -d -p 5000:5000 --name hello-world-container paragpatil01/hello-world

