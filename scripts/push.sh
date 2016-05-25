#!/bin/sh

# Abort the script if any command fails
set -e

docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
docker tag repo_web zephell/alerted-us-web:1.0.$SNAP_PIPELINE_COUNTER
docker push zephell/alerted-us-web:1.0.$SNAP_PIPELINE_COUNTER