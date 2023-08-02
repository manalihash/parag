#!/bin/bash
set -e

#strop the container (if any running)
containerid=`docker ps | awk -F " " '{print $1}'`
docker rm -f $containerid