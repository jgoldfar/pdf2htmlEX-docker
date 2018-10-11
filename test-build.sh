#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

docker build -t jgoldfar/pdf2htmlex-dev:latest -f Dockerfile.dev .

docker run -it jgoldfar/pdf2htmlex-dev:latest ./dobuild.sh
