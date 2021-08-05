FROM python:3.8-alpine3.14
MAINTAINER LWQ kenan3015@gmail.com

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --update --no-cache bash wget \
    && rm -rf /var/cache/apk/*

WORKDIR /netload

# 制作负载文件
#RUN wget -O load_10m https://github.com/electron/electron/releases/download/v15.0.0-alpha.3/chromedriver-v15.0.0-alpha.3-win32-arm64.zip
RUN wget -O load_100m https://github.com/electron/electron/releases/download/v11.4.11/mksnapshot-v11.4.11-linux-arm64-x64.zip

EXPOSE 8080
CMD ["python", "-m", "http.server", "8080"]