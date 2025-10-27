# Docker flutter web

Prebuilt Docker image to build Flutter web apps

Features

* Only supports web builds
* mimimal depedencies
  * atleast it tries to be flutter is huge
* automatically rebuilt weekly
* Arm64 and x86-64 support

# Usage

```Dockerfile
FROM ghcr.io/ra341/dfw:latest AS flutter_builder

WORKDIR /web/

COPY ./project .

RUN flutter build web --wasm
```
