ck_user=you_user
ck_pass=you_pass
ck_db=you_db_name


start:
	docker run -d --name clickhouse --net host \
    -e CLICKHOUSE_DB=$(ck_db) -e CLICKHOUSE_USER=$(ck_user) -e CLICKHOUSE_PASSWORD=$(ck_pass) \
    clickhouse/clickhouse-server:22.3-alpine

stop:
	docker stop clickhouse

clean: stop
	docker rm clickhouse
