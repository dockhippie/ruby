FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk update && \
  apk add \
    build-base \
    libxml2-dev \
    libxslt-dev \
    ruby-dev \
    ruby \
    ruby-bundler && \
  rm -rf /var/cache/apk/*

ADD rootfs /

RUN mkdir /app
WORKDIR /app
CMD ["bash"]
