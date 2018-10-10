#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

DOCKER_REPO_BASE="pdf2htmlex-base"
IMG_TAG=latest

docker build -f Dockerfile.base -t ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG} .
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_BASE}:${IMG_TAG}

DOCKER_REPO_DEPS="pdf2htmlex-deps"

docker build -f Dockerfile.deps -t ${DOCKER_USERNAME}/${DOCKER_REPO_DEPS}:${IMG_TAG} .
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_DEPS}:${IMG_TAG}

DOCKER_REPO_STABLE="pdf2htmlex-stable"
docker build -f Dockerfile.stable -t ${DOCKER_USERNAME}/${DOCKER_REPO_STABLE}:${IMG_TAG} .
docker push ${DOCKER_USERNAME}/${DOCKER_REPO_STABLE}:${IMG_TAG}
