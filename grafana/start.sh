#! /bin/bash

docker run -d -p 3000:3000 --name grafana \
    -v `pwd`/conf/grafana.ini:/etc/grafana/grafana.ini \
    grafana/grafana:8.0.6