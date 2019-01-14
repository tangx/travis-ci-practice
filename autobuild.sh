#!/bin/bash
#

REPO=${REPO}
IMAGE=oracle-jdk
TAG=11.0.1-alpine3.8

USER=${HUB_MAIL}
PASSWORD=${HUB_PASSWORD}

docker login -u ${HUB_USER} -p ${HUB_PASSWD}

docker build -t ${REPO}/${IMAGE}:${TAG}
docker push ${REPO}/${IMAGE}:${TAG}

