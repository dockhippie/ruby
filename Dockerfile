FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

WORKDIR /srv/app
CMD ["bash"]

RUN apk update && \
  apk add \
    tzdata \
    git \
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
    ruby-json \
    ruby-etc \
    openssl-dev && \
  bundle \
    config build.nokogiri --use-system-libraries && \
  rm -rf /var/cache/apk/*

ADD rootfs /

ARG VERSION
ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.version=$VERSION
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/dockhippie/ruby.git"
LABEL org.label-schema.name="Ruby"
LABEL org.label-schema.vendor="Thomas Boerger"
LABEL org.label-schema.schema-version="1.0"
