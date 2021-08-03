FROM python:3.8-alpine3.14
MAINTAINER LWQ kenan3015@gmail.com

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --update --no-cache bash wget \
    && rm -rf /var/cache/apk/*

WORKDIR /netload

# 制作负载文件
RUN wget -O load_1m https://github.com/electron/electron/releases/download/v15.0.0-alpha.3/electron-api.json \
    && wget -O load_10m https://github.com/electron/electron/releases/download/v15.0.0-alpha.3/chromedriver-v15.0.0-alpha.3-win32-arm64.zip

EXPOSE 8080
CMD ["python", "-m", "http.server", "8080"]