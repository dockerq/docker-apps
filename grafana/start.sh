#! /bin/bash

docker run -d -p 3000:3000 --name grafana \
    -e PASSWORD=pass --user root \
    grafana/grafana:8.0.6