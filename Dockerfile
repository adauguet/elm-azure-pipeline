FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget -O - 'https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz' | gunzip -c >/usr/local/bin/elm
RUN chmod +x /usr/local/bin/elm