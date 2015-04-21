# Ruby

These are docker images for Ruby running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).
The cuurrent container size is ```176.5 MB```


## Usage

```
docker run -ti --name ruby webhippie/ruby:latest bash

# Execute this for further available commands
docker exec -ti ruby manage help
```


## Versions

* [latest](https://github.com/dockhippie/ruby/tree/master)
  available as ```webhippie/ruby:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/ruby/)


## Available management commands

```bash
Usage: manage <command> [<args>]

Some useful manage commands are:
   bash      Start a shell on container
   commands  List all available sub commands
   console   Start an interactive console
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
