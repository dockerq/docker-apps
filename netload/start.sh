#! /bin/bash

# curl localhost:8080/load_100m

docker run -d --name netloadv2 \
    -p 8080:8080
    netload:v2