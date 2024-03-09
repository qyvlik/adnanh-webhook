FROM alpine:3.19.1

LABEL org.opencontainers.image.source https://github.com/qyvlik/adnanh-webhook

ARG APK_REGISTRY=mirrors.ustc.edu.cn
ARG HTTP_PROXY

RUN sed -i "s/dl-cdn.alpinelinux.org/${APK_REGISTRY}/g" /etc/apk/repositories && \
    apk update && \
    apk add --no-cache bash==5.2.21-r0 \
        curl==8.5.0-r0 \
        webhook==2.8.1-r5 \
        docker==25.0.3-r1 \
        aws-cli==2.13.25-r0

RUN <<EOR
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
EOR

VOLUME /root/.docker

ENTRYPOINT /usr/bin/webhook
