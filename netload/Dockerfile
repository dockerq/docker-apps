FROM alpine:3.14.0
MAINTAINER LWQ kenan3015@gmail.com

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --update --no-cache bash wget \
    && rm -rf /var/cache/apk/*

ADD main.sh /tmp/main.sh