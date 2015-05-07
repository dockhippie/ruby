FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk-install \
  build-base \
  libxml2-dev \
  libxslt-dev \
  ruby-dev \
  ruby \
  ruby-bundler

ADD rootfs /

RUN mkdir /app
WORKDIR /app
CMD ["bash"]
