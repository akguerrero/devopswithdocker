#!/bin/sh

repositoryUrl="https://github.com/${1}/${2}"

git clone $repositoryUrl

imageTag="${3}:scriptver01"

docker build -t $imageTag ./${2}

docker login -u $DOCKER_USER -p $DOCKER_PWD docker.io

docker push $imageTag