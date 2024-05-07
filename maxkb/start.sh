#! /bin/bash

docker run -d --name=maxkb \
    --net host \
    -v `pwd`/data:/var/lib/postgresql/data \
    1panel/maxkb