#!/usr/bin/env bash

DOCKER_VERSION=25.0.3-r1
DOCKER_COMPOSE_VERSION=v2.24.7

apk add --no-cache docker==$DOCKER_VERSION

if [ -n "$HTTP_PROXY" ]
then
  # echo "using $HTTP_PROXY to download docker-compose"
  curl \
    -x "$HTTP_PROXY" \
    -SL https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-linux-x86_64 \
    -o /usr/libexec/docker/cli-plugins/docker-compose
else
  # echo "bad! $HTTP_PROXY to download docker-compose"
  curl \
    -SL https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-linux-x86_64 \
    -o /usr/libexec/docker/cli-plugins/docker-compose
fi
