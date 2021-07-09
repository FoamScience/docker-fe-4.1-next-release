FROM ubuntu:20.04
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y git-core build-essential binutils-dev cmake flex \
                                   zlib1g-dev libncurses5-dev curl bison \
                                   libxt-dev rpm mercurial graphviz python python-dev  gcc-7 g++-7
RUN useradd -m dockeruser
USER dockeruser
RUN git clone --branch nextRelease https://github.com/Unofficial-Extend-Project-Mirror/foam-extend-foam-extend-4.0/tree/nextRelease
