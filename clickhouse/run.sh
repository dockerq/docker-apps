#! /bin/bash
set -ex

ck_user=your_user
ck_pass=your_pass
ck_db=your_db_name

docker run -d --name clickhouse --net host \
    -e CLICKHOUSE_DB=${ck_db} -e CLICKHOUSE_USER=${ck_user} -e CLICKHOUSE_PASSWORD=${ck_pass} \
    clickhouse/clickhouse-server:22.3-alpine