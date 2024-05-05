#! /bin/bash
docker run -d -p 3000:8080 --name open-webui \
    --add-host=host.docker.internal:host-gateway \
    -v `pwd`/data:/app/backend/data --restart always \
    ghcr.io/open-webui/open-webui:main
