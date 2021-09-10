# Builder image
# refer
FROM alpine:3.10 AS builder

ENV SYSBENCH_VERSION 1.0.17

RUN apk add --no-cache --update \
        autoconf \
        automake \
        build-base \
        git \
        libaio-dev \
        libtool \
        pkgconf

RUN git clone https://github.com/akopytov/sysbench.git --branch ${SYSBENCH_VERSION} --depth 1

WORKDIR /sysbench
RUN ./autogen.sh && \
    ./configure --without-mysql && \
    make -j && \
    make install


# Target image
FROM alpine:3.14.0

RUN apk add --no-cache libaio libgcc \
    && rm -rf /var/cache/apk/*

COPY --from=builder /usr/local/share/sysbench /usr/local/share/sysbench
COPY --from=builder /usr/local/bin/sysbench   /usr/local/bin/sysbench

ENTRYPOINT ["/usr/local/bin/sysbench"]