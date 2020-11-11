#!/bin/sh
set -e

cd $GITHUB_WORKSPACE

docker login $INPUT_REGISTRY --username $INPUT_USERNAME --password $INPUT_PASSWORD
skaffold build --default-repo $INPUT_REGISTRY
