#! /bin/bash

docker run -d --name lobechat --restart always \
    -p 3210:3210 -e ACCESS_CODE=lobe666 \
    lobehub/lobe-chat:v1.5.4
