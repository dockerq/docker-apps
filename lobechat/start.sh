#! /bin/bash
#-p 3210:3210 \

docker run -d --name lobechat --net host --restart always \
    -e ACCESS_CODE=lobe666 \
    lobehub/lobe-chat:v1.7.2
