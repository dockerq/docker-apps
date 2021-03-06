#! /bin/bash

docker run -d \
  --name="nodeporter" \
  --net="host" \
  --pid="host" \
  -v "/:/host:ro,rslave" \
  prom/node-exporter:v1.2.0 \
  --path.rootfs=/host
