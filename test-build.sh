#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

docker run jgoldfar/pdf2htmlex-dev ls && cd pdf2htmlEX && cmake -DCMAKE_INSTALL_PREFIX=../usr . && make && make install
