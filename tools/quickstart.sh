#!/usr/bin/env bash
# This script can be modified to your needs for the installation
# of the Kaldi-ASR framwork on Debian-Based machines

sudo apt update &&
  apt install -y \
    cmake \
    sox \
    ffmpeg \
    g++ \
    automake \
    autoconf \
    libtool \
    subversion \
    git \
    zlib1g-dev \
    unzip \
    gfortran \
    python2.7 \
    python3

git clone --depth 1 https://github.com/kaldi-asr/kaldi.git &&
  cd kaldi/tools &&
  extras/install_mkl.sh && make -j $(nproc) &&
  cd ../src && ./configure --shared && make depend -j $(nproc) && make -j $(nproc)
