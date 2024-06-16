FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y git cmake make g++ python2.7 llvm-dev zlib1g-dev libreadline-dev && \
    mkdir -p /opt && \
    cd /opt && \
    git clone https://github.com/morganstanley/hobbes && \
    cd hobbes && \
    cmake . && \
    make && \
    make install 

WORKDIR /code

COPY bin .

# CMD "./run.sh"