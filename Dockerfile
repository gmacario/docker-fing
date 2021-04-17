FROM ubuntu:20.04

ARG FING_ARCHIVE_URL=https://39qiv73eht2y1az3q51pykkf-wpengine.netdna-ssl.com/wp-content/uploads/2018/02/FingKit_CLI_Linux_Debian.zip

RUN apt-get update -qq && \
    apt-get install -qqy curl unzip && \
    mkdir -p /tmp/fing-download && \
    cd /tmp/fing-download && \
    curl -O ${FING_ARCHIVE_URL} && \
    unzip $(basename ${FING_ARCHIVE_URL}) && \
    mv "Linux_Debian/fing-5.1.0-amd64 (3).deb" "Linux_Debian/fing-5.1.0-amd64.deb"

RUN dpkg -i /tmp/fing-download/Linux_Debian/fing-*-amd64.deb && \
    rm -rf /tmp/fing-download && \
    rm -rf /var/lib/apt/lists/*

# RUN ls -la /usr/bin

ENTRYPOINT ["/usr/bin/fing"]
# CMD ["--help"]

# EOF
