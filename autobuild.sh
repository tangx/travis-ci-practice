#!/bin/bash
#

[ -f  env.private ] && source env.private

IMAGE=oracle-jdk
TAG=11.0.1-alpine3.8

USER=${HUB_MAIL}
PASSWORD=${HUB_PASSWD}

docker login -u ${HUB_USER} -p ${HUB_PASSWD}

docker build -t ${REPO}/${IMAGE}:${TAG} alpine-jdk
docker push ${REPO}/${IMAGE}:${TAG}

