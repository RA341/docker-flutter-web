FROM debian:13-slim AS flutter_base

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip \
    xz-utils \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/flutter/flutter.git -b stable /flutter

ENV PATH="/flutter/bin:${PATH}"

RUN flutter precache linux web
