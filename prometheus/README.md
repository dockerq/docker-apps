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