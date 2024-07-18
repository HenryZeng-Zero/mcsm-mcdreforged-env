FROM debian:bookworm-slim

LABEL version="1.0"
LABEL maintainer="Rikki<me@rikki.pub>"
LABEL description="A Environment for MCDR and Minecraft Server (version equal or above 1.20.1)"

RUN apt-get update \
    && apt-get install -y python3 python3.11-venv \
    && apt-get install -y openjdk-17-jdk \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /python \
    && python3 -m venv /python \
    && . /python/bin/activate \
    && pip install mcdreforged --no-cache-dir --proxy=${http_proxy}\
    && mkdir /MCDR \
    && chmod -R 755 /MCDR \
    && cd /MCDR \
    && mcdreforged init

WORKDIR /MCDR

CMD . /python/bin/activate \
    && python -m mcdreforged