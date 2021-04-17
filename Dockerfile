FROM ubuntu:20.04

ARG FING_ARCHIVE_URL=https://www.fing.com/images/uploads/general/CLI_Linux_Generic_5.5.2.zip

RUN apt-get update -qq && \
    apt-get install -qqy curl unzip && \
    mkdir -p /tmp/fing-download && \
    cd /tmp/fing-download && \
    curl -O ${FING_ARCHIVE_URL} && \
    unzip $(basename ${FING_ARCHIVE_URL}) && \
    ls -la && \
    dpkg -i /tmp/fing-download/fing-*-amd64.deb && \
    rm -rf /tmp/fing-download && \
    rm -rf /var/lib/apt/lists/*

# RUN ls -la /usr/bin

ENTRYPOINT ["/usr/bin/fing"]
# CMD ["--help"]

# EOF
