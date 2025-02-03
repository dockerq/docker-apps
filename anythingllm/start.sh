#! /bin/bash

docker run -d --name=allm -p 3801:3001 \
    --cap-add SYS_ADMIN \
    --add-host=host.docker.internal:host-gateway \
    -v `pwd`/data:/app/server/storage \
    -v `pwd`/.env:/app/server/.env \
    -e STORAGE_DIR="/app/server/storage" \
    mintplexlabs/anythingllm:1.2
