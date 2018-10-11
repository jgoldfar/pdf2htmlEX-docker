#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

patch < ${WORKDIR}/CMakeLists.txt.patch
cmake -DENABLE_SVG=ON -DCMAKE_INSTALL_PREFIX=${WORKDIR}/usr .
cmake -LA .
make
make install
