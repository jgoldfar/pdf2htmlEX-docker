#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ $# -eq 0 ]; then
  docker run -it jgoldfar/pdf2htmlex-stable:latest /build/usr/bin/pdf2htmlEX --help;
else
  docker run -v `pwd`:/data -it jgoldfar/pdf2htmlex-stable:latest /build/usr/bin/pdf2htmlEX /data/$@;
fi
