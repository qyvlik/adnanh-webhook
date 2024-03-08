FROM alpine:3.19.1

ARG APK_REGISTRY=mirrors.ustc.edu.cn
ARG HTTP_PROXY

RUN sed -i "s/dl-cdn.alpinelinux.org/${APK_REGISTRY}/g" /etc/apk/repositories

COPY ./root/adnanh-webhook /adnanh-webhook

WORKDIR /adnanh-webhook

RUN ./scripts/apk-add-from-file.sh ./pkgs.txt

RUN ./scripts/apk-add-docker.sh

ENTRYPOINT /adnanh-webhook/entrypoint.sh
