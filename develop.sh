#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

PDF2HTMLREPO="https://github.com/pdf2htmlEX/pdf2htmlEX.git"

if [ ! -d "`pwd`/pdf2htmlEX" ] ; then
  git clone ${PDF2HTMLREPO} ;
fi

docker build -f Dockerfile.dev -t jgoldfar/pdf2htmlex-dev .
