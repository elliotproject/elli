#!/usr/bin/env bash

cd ../..
CORES=$(nproc --all)
HOST="x86_64-pc-linux-gnu"
CONFIGFLAGS="--enable-reduce-exports --disable-bench --disable-tests --disable-gui-tests --disable-maintainer-mode --disable-dependency-tracking --enable-upnp-default --disable-zmq"
HOST_CFLAGS="-Os"
HOST_CXXFLAGS="-Os"
HOST_LDFLAGS="-static-libstdc++"
BASEPREFIX="$PWD/depends"
DEP_OPTS="NO_QT=0 NO_UPNP=0 DEBUG=0 NO_WALLET=0"

make HOST=${HOST} -C ${BASEPREFIX} ${DEP_OPTS}
./autogen.sh
CONFIG_SITE=${BASEPREFIX}/${HOST}/share/config.site ./configure --prefix=/ ${CONFIGFLAGS} CFLAGS="${HOST_CFLAGS}" CXXFLAGS="${HOST_CXXFLAGS}" LDFLAGS="${HOST_LDFLAGS}"
make --jobs ${CORES}
