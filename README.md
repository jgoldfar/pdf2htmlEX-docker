# pdf2htmlEX Docker Image Builder

[![Build Status](https://travis-ci.org/jgoldfar/pdf2htmlEX-docker.svg?branch=master)](https://travis-ci.org/jgoldfar/pdf2htmlEX-docker)
[![Docker Pulls (Base)](https://img.shields.io/docker/pulls/jgoldfar/pdf2htmlex-base.svg)](https://hub.docker.com/r/jgoldfar/pdf2htmlex-base/)
[![Docker Pulls (Deps)](https://img.shields.io/docker/pulls/jgoldfar/pdf2htmlex-deps.svg)](https://hub.docker.com/r/jgoldfar/pdf2htmlex-deps/)
[![Docker Pulls (Stable)](https://img.shields.io/docker/pulls/jgoldfar/pdf2htmlex-stable.svg)](https://hub.docker.com/r/jgoldfar/pdf2htmlex-stable/)

This image is intended to make developing and using [pdf2htmlEX](https://github.com/pdf2htmlEX/pdf2htmlEX) easier.
[Travis](https://travis-ci.org/jgoldfar/pdf2htmlEX-docker) should regularly build each of these images and push them to Docker Hub.

* The Base image is the Debian-based environment, together with the necessary packages, needed to successfully compile pdf2htmlEX and its dependencies.

* The Deps image is a known-good set of dependencies for pdf2htmlEX, compiled from source, built onto the Base image.

* The Stable image is the master version of pdf2htmlEX compiled on top of the Deps image.

The compilation step is known to finish successfully with commit https://github.com/pdf2htmlEX/pdf2htmlEX/commit/d5382e50f407fad70bf2a51445e23f13eb778948

For local development, the scripts `develop.sh` and `test-build.sh` are provided to automate the downloading and building of the necessary base images, and try to build pdf2htmlEX.
The resulting image, jgoldfar/pdf2htmlex-dev, is meant only for local experimentation.
