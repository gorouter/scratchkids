FROM wisbyme/scratch-vm:latest

LABEL maintainer="ljjun <wisbyme@gmail.com>"

RUN apt-get update -y \
 && cd ~/Scratch/scratch-blocks \
 && npm install \
 && npm link \
 && /sbin/install_clean


