# adnanh-webhook-docker

**[Webhook](https://github.com/adnanh/webhook)** Dockerized. 

# ref

1. https://github.com/almir/docker-webhook
2. https://github.com/Roxedus/docker-webhook
3. https://github.com/thecatlady/docker-webhook

# docker build

```bash
docker build \
  -t adnanh-webhook \
  --build-arg HTTP_PROXY=socks5://IP:PORT \
  --progress=plain \
  .
```

docker build \
-t adnanh-webhook \
--build-arg HTTP_PROXY=socks5://192.168.51.71:1080 \
--progress=plain \
.