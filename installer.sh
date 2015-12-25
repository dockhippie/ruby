#!/usr/bin/env bash

VERSION=0.6.0
URL=https://github.com/postmodern/ruby-install/archive/v${VERSION}.tar.gz

wget -O - ${URL} | tar -xzf -

pushd ruby-install-${VERSION}
  make install
  ruby-install --latest --system --jobs=8 ruby ${RUBY_VERSION}
  make uninstall
popd

rm -rf ruby-install-${VERSION}
