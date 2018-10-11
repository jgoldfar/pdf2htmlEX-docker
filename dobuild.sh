#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

cd pdf2htmlEX
export PKG_CONFIG_PATH=`pwd`/../usr/lib/pkgconfig:${PKG_CONFIG_PATH:-}
patch < ../CMakeLists.txt.patch
cmake -DENABLE_SVG=ON -DCMAKE_INSTALL_PREFIX=`pwd`/../usr .
cmake -LA .
make
make install
