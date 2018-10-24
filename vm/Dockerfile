FROM wisbyme/scratch-node:latest

LABEL maintainer="ljjun <wisbyme@gmail.com>"

RUN apt-get update -y \
 && cd ~/Scratch/scratch-vm \
 && npm install \
 && npm link \
 && /sbin/install_clean


