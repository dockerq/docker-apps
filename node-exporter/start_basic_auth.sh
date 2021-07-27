#! /bin/bash

docker run -d \
  --name="nodeporter" \
  --net="host" \
  --pid="host" \
  -v "/:/host:ro,rslave" \
  -v `pwd`/conf:/etc/node_exporter \
  prom/node-exporter:v1.2.0 \
  --path.rootfs=/host
  --web.config=/etc/node_exporter/web.yml

