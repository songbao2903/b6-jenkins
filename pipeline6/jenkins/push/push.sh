#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u nhuongtrieu -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG nhuongtrieu/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push nhuongtrieu/$IMAGE:$BUILD_TAG
