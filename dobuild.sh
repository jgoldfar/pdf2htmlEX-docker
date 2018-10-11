#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

cd pdf2htmlEX
patch < ../CMakeLists.txt.patch
cmake -DENABLE_SVG=ON -DCMAKE_INSTALL_PREFIX=`pwd`/../usr .
cmake -LA .
make
make install
