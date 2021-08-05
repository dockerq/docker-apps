#! /bin/bash

docker run -d --name netloadv1 \
    netload:v1 \
    /tmp/main.sh 300k 1 https://wangdoc.com/bash/condition.html