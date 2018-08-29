# docker-fing

Docker image for the [Fing CLI](https://www.fing.io/fingkit-sdk-downloads/).

### Usage

#### Get help

```shell
docker run --rm gmacario/fing --help
```

#### Scan local network

```shell
docker run -ti --rm --net=host gmacario/fing
```

#### Start interactive mode

```shell
docker run -ti --rm --net=host gmacario/fing --interactive
```

### Rebuild the Docker image

```shell
docker build -t gmacario/fing .
```

You may change the URL where the fing binary is fetched from
using the `--build-arg FING_ARCHIVE_URL="https://another.url"` option.

### License

docker-fing is licensed under the MIT License - for details please see the `LICENSE` file.

Copyright (C) 2018, [Gianpaolo Macario](http://gmacario.github.io/)

<!-- EOF -->
