FROM alpine:3.19.1

LABEL org.opencontainers.image.source https://github.com/qyvlik/adnanh-webhook

ARG APK_REGISTRY=mirrors.ustc.edu.cn
ARG HTTP_PROXY

RUN sed -i "s/dl-cdn.alpinelinux.org/${APK_REGISTRY}/g" /etc/apk/repositories && \
    apk update

RUN apk add --no-cache bash==5.2.21-r0

COPY ./root/adnanh-webhook /adnanh-webhook

WORKDIR /adnanh-webhook

RUN ./scripts/apk-add-from-file.sh ./pkgs.txt

RUN ./scripts/apk-add-docker.sh

ENTRYPOINT /adnanh-webhook/entrypoint.sh
