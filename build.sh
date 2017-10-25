#!/bin/bash -xe
#
# Build a docker image with latest commit id as tag
# NOTE: you will need to login to registry first

REGISTRY=hub.docker.com
REPO=forsgren
IMAGE=test

# NO CONFIGURABLE OPTIONS BELOW THIS LINE

LAST_COMMIT=$(git rev-parse --short HEAD)
URL=$REGISTRY/$REPO/$IMAGE:$LAST_COMMIT
docker build -t $URL .
docker push $URL
