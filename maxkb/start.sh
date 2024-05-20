#! /bin/bash

docker run -d --name=maxkb \
    -p 6080:8080 \
    -v `pwd`/data:/var/lib/postgresql/data \
    1panel/maxkb
