FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV PATH /usr/lib/ruby/gems/2.1.0/bin:${PATH}

RUN mkdir -p /docker/libexec
ADD libexec /docker/libexec
RUN ln -sf /docker/libexec/manage /usr/bin/manage

RUN apk-install \
  ca-certificates \
  build-base \
  ruby-dev \
  ruby \
  ruby-bundler

WORKDIR /docker
ENTRYPOINT ["manage"]
CMD ["bash"]
