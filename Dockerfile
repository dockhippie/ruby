FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/srv/app"]

WORKDIR /srv/app
CMD ["bash"]

RUN apk update && \
  apk add \
    build-base \
    libffi-dev \
    libxml2-dev \
    libxslt-dev \
    ruby-dev \
    ruby \
    ruby-bundler \
    ruby-rake \
    ruby-io-console \
    ruby-bigdecimal \
    ruby-irb \
    ruby-rdoc \
    ruby-minitest \
    ruby-json && \
  rm -rf /var/cache/apk/*

ADD rootfs /
