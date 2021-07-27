# Prometheus

# Usage
1. gen password for basic auth
   ```shell
    python genpass.py
   ```
2. copy the output and update `conf/web.yml`
3. run ./start.sh

# Reference
- [prometheus basic auth](https://prometheus.io/docs/guides/basic-auth/#securing-prometheus-api-and-ui-endpoints-using-basic-auth)
- [HTTPS and Basic Auth for Node Exporter](https://github.com/prometheus/exporter-toolkit/blob/v0.1.0/https/README.md)
- [Configure basic_auth for Prometheus Target](https://stackoverflow.com/questions/64031121/configure-basic-auth-for-prometheus-target)