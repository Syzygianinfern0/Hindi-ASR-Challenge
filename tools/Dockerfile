# You can use this dockerfile to get Kaldi-ASR along
# with its dependencies setup and ready to go

FROM ubuntu:18.04
LABEL maintainer="spsharan2000@gmail.com"


RUN apt update && \
	apt install -y \
	apt-transport-https 
	
RUN apt update && \
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

RUN apt install -y python3-pip

RUN pip3 install --no-cache --upgrade pip && \
    pip3 install --no-cache notebook

RUN git clone --depth 1 https://github.com/kaldi-asr/kaldi.git /opt/kaldi && \
	cd /opt/kaldi/tools && \
	extras/install_mkl.sh && make -j $(nproc) && \
	cd /opt/kaldi/src && ./configure --shared && make depend -j $(nproc) && make -j $(nproc)

WORKDIR /opt/kaldi/
