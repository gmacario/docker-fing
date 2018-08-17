FROM ubuntu:18.04

COPY Linux_Debian/fing-5.1.0-amd64.deb /tmp

RUN apt-get update -qq && \
    apt-get install -qqy && \
    dpkg -i /tmp/fing-5.1.0-amd64.deb && \
    rm /tmp/fing-5.1.0-amd64.deb && \
    rm -rf /var/lib/apt/lists/*

# RUN ls -la /usr/bin

ENTRYPOINT ["/usr/bin/fing"]
# CMD ["--help"]

# EOF
