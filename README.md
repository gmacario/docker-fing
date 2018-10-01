# docker-fing

Docker image for the [Fing CLI](https://www.fing.io/fingkit-sdk-downloads/).

### Usage examples

#### Get help

```shell
docker run --rm gmacario/fing --help
```

#### Start interactive mode

```shell
docker run -ti --rm --net=host gmacario/fing --interactive
```

#### Discover hosts in a given address range

```shell
docker run -ti --rm --net=host gmacario/fing 192.168.64.0/24
```

#### Log network events in CSV

```shell
docker run -ti --rm --net=host gmacario/fing 192.168.1.0/24 --silent -o log,csv
```

Sample output:

```
gmacario@iongmacario:~$ docker run -ti --rm --net=host gmacario/fing 192.168.1.0/24 --silent -o log,csv
2018/08/29 04:31:35;up;192.168.1.74;;iongmacario;02:04:4B:00:B5:0A;
2018/08/29 04:31:36;up;192.168.1.65;;;D8:58:D7:00:5E:42;CZ.NIC, z.s.p.o.
2018/08/29 04:31:36;up;192.168.1.67;;;B8:27:EB:FC:20:00;Raspberry Pi
2018/08/29 04:31:40;up;192.168.1.253;;;C6:EA:1D:46:E0:98;
2018/08/29 04:31:40;up;192.168.1.254;;_gateway;C4:EA:1D:46:E0:98;Technicolor
2018/08/29 04:32:35;up;192.168.1.74;;iongmacario;02:04:4B:00:B5:0A;
2018/08/29 04:32:36;up;192.168.1.65;;;D8:58:D7:00:5E:42;CZ.NIC, z.s.p.o.
2018/08/29 04:32:36;up;192.168.1.67;;;B8:27:EB:FC:20:00;Raspberry Pi
2018/08/29 04:32:40;up;192.168.1.253;;;C6:EA:1D:46:E0:98;
2018/08/29 04:32:40;up;192.168.1.254;;_gateway;C4:EA:1D:46:E0:98;Technicolor
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
