# Grafana on Docker
运行的时候会报错，ws链接错误，需要更改/etc/grafana/grafana.ini中的`root_url`(默认值为localhost:3000)或者`domain`

参考[Syslog filling up with warnings #36443](https://github.com/grafana/grafana/issues/36443)

如果需要修改grafana的配置，修改文件`conf/grafana.ini`，然后重新运行容器