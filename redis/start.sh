#! /bin/bash
docker run -d --name redis --net host \
    -v `pwd`/etc/redis.conf:/usr/local/etc/redis/redis.conf
    redis:latest
    # redis:6.2-alpine
