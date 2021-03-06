#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ $# -lt 2 ]; then
  docker run -it jgoldfar/pdf2htmlex-dev:latest /build/usr/bin/pdf2htmlEX --help;
else
  docker run -v `pwd`:/data/ -it jgoldfar/pdf2htmlex-dev:latest /build/usr/bin/pdf2htmlEX --dest-dir /data /data/$1 $2;
fi
