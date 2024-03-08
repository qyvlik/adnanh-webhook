# adnanh-webhook-docker

**[Webhook](https://github.com/adnanh/webhook/tree/master)** Dockerized.

# ref

1. https://github.com/almir/docker-webhook
2. https://github.com/Roxedus/docker-webhook
3. https://github.com/thecatlady/docker-webhook

# alpine pkgs

1. bash: https://pkgs.alpinelinux.org/package/edge/main/x86/bash
2. git:https://pkgs.alpinelinux.org/package/edge/main/x86/git
3. docker: https://pkgs.alpinelinux.org/package/edge/community/x86/docker
   1. 
4. aws-cli: https://pkgs.alpinelinux.org/package/edge/community/x86_64/aws-cli

## pkgs repositories

```bash
export APK_REGISTRY=mirrors.ustc.edu.cn
sed -i "s/dl-cdn.alpinelinux.org/${APK_REGISTRY}/g" /etc/apk/repositories
```
