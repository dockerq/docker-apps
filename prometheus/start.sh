#! /bin/bash
# refer to https://stackoverflow.com/questions/31573337/can-you-pass-flags-to-the-command-that-docker-runs
# for specific flags for run
docker run -d -p 9090:9090 --name prom \
    -v `pwd`/conf:/etc/prometheus \
    prom/prometheus:v2.28.0 \
    --config.file=/etc/prometheus/prometheus.yml \
    --web.config.file=/etc/prometheus/web.yml \
    --storage.tsdb.path=/prometheus \
    --web.console.libraries=/usr/share/prometheus/console_libraries \
    --web.console.templates=/usr/share/prometheus/consoles