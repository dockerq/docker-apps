root_pass=you_pass

prod:
	docker run -d --name etcd --net host \
	-e ETCD_ROOT_PASSWORD=$(root_pass) \
	-e ETCD_ADVERTISE_CLIENT_URLS="http://0.0.0.0:2379" bitnami/etcd:3
clean:
	docker stop etcd
	docker rm etcd
