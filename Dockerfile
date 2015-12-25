FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV RUBY_VERSION 2.2.4
ADD installer.sh /root/

RUN apk update && \
  apk add \
    build-base \
    zlib-dev \
    openssl-dev \
    gdbm-dev \
    db-dev \
    libedit-dev \
    libffi-dev \
    yaml-dev \
    libffi-dev \
    libxml2-dev \
    libxslt-dev && \
  bash \
    /root/installer.sh && \
  rm -rf \
    /var/cache/apk/*

ADD rootfs /

RUN gem update --system && \
  gem install bundler

WORKDIR /app
CMD ["bash"]
