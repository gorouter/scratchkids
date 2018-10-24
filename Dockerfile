FROM wisbyme/scratch-blocks:latest

LABEL maintainer="ljjun <wisbyme@gmail.com>"

COPY 01_start_scratch.sh /etc/my_init.d/01_start_scratch.sh

RUN apt-get update -y \
 && chmod +x /etc/my_init.d/01_start_scratch.sh \
 && cd ~/Scratch/scratch-gui \
 && npm install \
 && npm link scratch-vm scratch-blocks \
 && npm install \
 && /sbin/install_clean

EXPOSE 80

WORKDIR ~
