#!/bin/bash
# 

#!/bin/bash
set -e

# List running containers
docker ps

# Stop & remove the container if it exists
CONTAINER_ID=$(docker ps -aq --filter "ancestor=paragpatil01/hello-world")

if [ ! -z "$CONTAINER_ID" ]; then
    echo "Stopping existing container..."
    docker stop "$CONTAINER_ID"
    docker rm "$CONTAINER_ID"
fi

# Remove the image if it exists
if docker images -q paragpatil01/hello-world; then
    docker rmi paragpatil01/hello-world
fi

# Pull the latest image from Docker Hub
docker pull paragpatil01/hello-world

# Run the container with a fixed name
docker run -d -p 5000:5000 --name hello-world-container paragpatil01/hello-world

