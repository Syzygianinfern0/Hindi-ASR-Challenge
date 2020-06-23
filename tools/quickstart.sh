#!/usr/bin/env bash
# Modified version of https://github.com/espnet/espnet/blob/master/ci/install_kaldi.sh

set -euo pipefail

echo "Cloning Kaldi"
[ ! -d kaldi ] && git clone https://github.com/kaldi-asr/kaldi --depth 1
(
  cd kaldi/tools || exit 1
  echo "" >extras/check_dependencies.sh
  chmod +x extras/check_dependencies.sh
  echo "Compiling the necessary packages..."
  make sph2pipe sclite openfst
)

echo "Downloading the pre-build kaldi binary"
[ ! -e ubuntu16-featbin.tar.gz ] && wget --tries=3 https://github.com/espnet/kaldi-bin/releases/download/v0.0.1/ubuntu16-featbin.tar.gz
tar -xf ./ubuntu16-featbin.tar.gz
cp featbin/* kaldi/src/featbin/
