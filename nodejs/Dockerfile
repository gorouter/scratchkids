FROM wisbyme/ubuntu16

LABEL maintainer="ljjun <wisbyme@gmail.com>"

RUN apt-get update -y \
 && apt-get install -y --no-install-recommends \
    net-tools wget iputils-ping iproute2 git curl \
 && curl -sL https://deb.nodesource.com/setup_9.x | bash - \
 && apt-get install -y --no-install-recommends \
    build-essential nodejs \
 && mkdir -p ~/Scratch \
 && cd ~/Scratch \
 && git clone https://github.com/llk/scratch-gui \
 && git clone https://github.com/llk/scratch-vm \
 && git clone https://github.com/llk/scratch-blocks \
 && /sbin/install_clean

