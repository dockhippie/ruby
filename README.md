# Ruby

[![](https://badge.imagelayers.io/webhippie/ruby:latest.svg)](https://imagelayers.io/?images=webhippie/ruby:latest 'Get your own badge on imagelayers.io')

These are docker images for [Ruby](https://www.ruby-lang.org) running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Usage

```bash
docker run -ti \
  --name ruby \
  webhippie/ruby:latest
```


## Versions

* [latest](https://github.com/dockhippie/ruby/tree/master)
  available as ```webhippie/ruby:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/ruby/)


## Available environment variables

None


## Inherited environment variables

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
