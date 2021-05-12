start:
	docker run -d --name redis --net host \
    -v `pwd`/etc/redis:/usr/local/etc/redis/redis.conf \
    redis:6.2-alpine

stop:
	docker stop redis

clean: stop
	docker rm redis