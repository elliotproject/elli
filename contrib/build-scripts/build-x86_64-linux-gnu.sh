#!/usr/bin/env bash

cd ../..
CORES=$(nproc --all)
HOST="x86_64-pc-linux-gnu"
CONFIGFLAGS="--enable-reduce-exports --disable-bench --disable-tests --disable-gui-tests --disable-maintainer-mode --enable-upnp-default --disable-zmq"
HOST_CFLAGS=""
HOST_CXXFLAGS=""
HOST_LDFLAGS="-static-libstdc++"
BASEPREFIX="$PWD/depends"

make HOST=${HOST} -C ${BASEPREFIX}
./autogen.sh
CONFIG_SITE=${BASEPREFIX}/${HOST}/share/config.site ./configure --prefix=/ ${CONFIGFLAGS} CFLAGS="${HOST_CFLAGS}" CXXFLAGS="${HOST_CXXFLAGS}" LDFLAGS="${HOST_LDFLAGS}"
make --jobs ${CORES}
