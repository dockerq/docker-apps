#! /bin/bash

docker run -d --name netload \
    netload:v1 \
    /tmp/main.sh 300k 1 https://wangdoc.com/bash/condition.html