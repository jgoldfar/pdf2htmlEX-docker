# pdf2htmlEX Docker Image Builder

[![Build Status](https://travis-ci.org/jgoldfar/pdf2htmlEX-docker.svg?branch=master)](https://travis-ci.org/jgoldfar/pdf2htmlEX-docker)
[![Docker Pulls (Base)](https://img.shields.io/docker/pulls/jgoldfar/pdf2htmlex-base.svg)](https://hub.docker.com/r/jgoldfar/pdf2htmlex-base/)
[![Docker Pulls (Deps)](https://img.shields.io/docker/pulls/jgoldfar/pdf2htmlex-deps.svg)](https://hub.docker.com/r/jgoldfar/pdf2htmlex-deps/)
[![Docker Pulls (Stable)](https://img.shields.io/docker/pulls/jgoldfar/pdf2htmlex-stable.svg)](https://hub.docker.com/r/jgoldfar/pdf2htmlex-stable/)

This image is intended to make developing and using [pdf2htmlEX](https://github.com/pdf2htmlEX/pdf2htmlEX) easier.
[Travis](https://travis-ci.org/jgoldfar/pdf2htmlEX-docker) should regularly build each of these images and push them to Docker Hub.

* The [Base](https://hub.docker.com/r/jgoldfar/pdf2htmlex-base/) image is the Debian-based environment, together with the necessary packages, needed to successfully compile pdf2htmlEX and its dependencies.

* The [Deps](https://hub.docker.com/r/jgoldfar/pdf2htmlex-deps/) image is a known-good set of dependencies for pdf2htmlEX, compiled from source, built onto the Base image.

* The [Stable](https://hub.docker.com/r/jgoldfar/pdf2htmlex-stable/) image is the master version of pdf2htmlEX compiled on top of the Deps image.

The compilation step is known to finish successfully with commit https://github.com/pdf2htmlEX/pdf2htmlEX/commit/d5382e50f407fad70bf2a51445e23f13eb778948

Scripts are provided to automate building and using the images:

* `build.sh` builds the images and pushes them to Docker hub (requires the environment variable `DOCKER_USERNAME` to be set in the environment, and you should previously have logged into docker hub with that username.

* `build-dev.sh` builds `pdf2htmlEX` from a local version of the source at `./pdf2htmlEX`; if the source is not available, it is cloned into the correct location for you. This is intended for local development on `pdf2htmlEX`.

In both `build.sh` and `build-dev.sh`, the volume `/data/` is made available.

* `dobuild.sh` is the common build/installation script for `pdf2htmlEX` used in both `build.sh` and `build-dev.sh`.

* `test-dev.sh` and `test-stable.sh` will run the installed version of `pdf2htmlEX`, either to see the usage information (with no arguments) or, if run as

```
test-dev.sh ./path/to/file.pdf outputfile.html
```

will produce the output corresponding to `file.pdf` into the current working directory.
