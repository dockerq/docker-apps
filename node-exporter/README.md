# Node Exporter Docker Container

# Basic Auth
create config file `web.yml` and add bellow content:
```yml
basic_auth_users:
  prom: $2b$12$0Edpca4VZIPPyLVM6wJAEOVcNRzRViWwiuKxfzZNov.M1sOTV5qZe
```

Default user and password is `prom:prom`.

You can use bellow python scripts to generate youself account:
```python
import getpass
import bcrypt

password = getpass.getpass("password: ")
hashed_password = bcrypt.hashpw(password.encode("utf-8"), bcrypt.gensalt())
print(hashed_password.decode())
```

# Reference
- [HTTPS and Basic Auth for Node Exporter](https://github.com/prometheus/exporter-toolkit/blob/v0.1.0/https/README.md)
- [Configure basic_auth for Prometheus Target](https://stackoverflow.com/questions/64031121/configure-basic-auth-for-prometheus-target)