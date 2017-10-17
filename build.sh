#!/bin/bash
#
# Build a docker image with latest commit id as tag
# NOTE: you will need to login to registry first

REGISTRY=hub.docker.com
REPO=forsgren
IMAGE=test

# NO CONFIGURABLE OPTIONS BELOW THIS LINE

URL=$REGISTRY/$REPO/$IMAGE:$COMMIT_ID
LAST_COMMIT=$(git rev-parse --short HEAD)
docker build -t $URL .
docker push $URL:$COMMIT_ID
