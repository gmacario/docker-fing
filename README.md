# docker-fing

Docker image for the [Fing CLI](https://www.fing.io/fingkit-sdk-downloads/).

### Usage

```shell
docker run -ti --net=host gmacario/fing
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
