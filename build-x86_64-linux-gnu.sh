#!/usr/bin/env bash

CORES=$(nproc --all)
HOST="x86_64-linux-gnu"
CONFIGFLAGS="--enable-reduce-exports --disable-bench --disable-tests --disable-gui-tests --disable-ccache --disable-maintainer-mode --disable-dependency-tracking"
HOST_CFLAGS="-O3"
HOST_CXXFLAGS="-O3"
HOST_LDFLAGS="-static-libstdc++"
BASEPREFIX=$PWD/depends

make HOST=${HOST} -C ${BASEPREFIX}
./autogen.sh
CONFIG_SITE=${BASEPREFIX}/${HOST}/share/config.site ./configure --prefix=/ ${CONFIGFLAGS} CFLAGS="${HOST_CFLAGS}" CXXFLAGS="${HOST_CXXFLAGS}" LDFLAGS="${HOST_LDFLAGS}"
make --jobs ${CORES}
