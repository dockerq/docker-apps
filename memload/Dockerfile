FROM python:3.8-alpine3.14
MAINTAINER LWQ kenan3015@gmail.com

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --update --no-cache bash build-base \
    && rm -rf /var/cache/apk/*

WORKDIR /memload

ADD main.cc .
RUN g++ main.cc -o memload

CMD ["./memload/memload"]