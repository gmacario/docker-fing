#!/bin/bash -xe

ARCHIVE_URL=https://39qiv73eht2y1az3q51pykkf-wpengine.netdna-ssl.com/wp-content/uploads/2018/02/FingKit_CLI_Linux_Debian.zip
INSTALL_PKGOLD="Linux_Debian/fing-5.1.0-amd64 (3).deb"
INSTALL_PKG="Linux_Debian/fing-5.1.0-amd64.deb"

if [ ! -e $(basename ${ARCHIVE_URL}) ]; then
    echo "INFO: Downloading ${ARCHIVE_URL}"
    curl -O ${ARCHIVE_URL}
fi
if [ ! -e "${INSTALL_PKG}" ]; then
    echo "INFO: Unzipping $(basename ${ARCHIVE_URL})"
    unzip $(basename ${ARCHIVE_URL})
     cp "${INSTALL_PKGOLD}" "${INSTALL_PKG}"
fi

docker build -t gmacario/fing .

# EOF
