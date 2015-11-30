FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk update && \
  apk add \
    build-base \
    libffi-dev \
    libxml2-dev \
    libxslt-dev \
    ruby-dev \
    ruby \
    ruby-bundler \
    ruby-io-console && \
  rm -rf /var/cache/apk/*

ADD rootfs /

WORKDIR /app
CMD ["bash"]
