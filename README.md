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

### Rebuilding the container

```shell
./build.sh
docker login
docker push gmacario/fing
```

### License

docker-fing is licensed under the MIT License - for details please see the `LICENSE` file.

Copyright (C) 2018, [Gianpaolo Macario](http://gmacario.github.io/)

<!-- EOF -->
