#! /bin/bash

docker run -d --name lobechat -p 3210:3210 -e ACCESS_CODE=lobe666 lobehub/lobe-chat