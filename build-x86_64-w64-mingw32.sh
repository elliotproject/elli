#!/usr/bin/env bash

CORES=$(nproc --all)
HOST="x86_64-w64-mingw32"
CONFIGFLAGS="--enable-reduce-exports --disable-bench --disable-gui-tests --disable-tests --disable-maintainer-mode --disable-dependency-tracking --enable-upnp-default"
HOST_CFLAGS=""
HOST_CXXFLAGS=""
BASEPREFIX=$PWD/depends

make HOST=${HOST} -C ${BASEPREFIX}
./autogen.sh
CONFIG_SITE=${BASEPREFIX}/${HOST}/share/config.site ./configure --prefix=/ ${CONFIGFLAGS} CFLAGS="${HOST_CFLAGS}" CXXFLAGS="${HOST_CXXFLAGS}"
make --jobs ${CORES}
