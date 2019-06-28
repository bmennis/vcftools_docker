FROM ubuntu:16.04
###dockerfile for vcftools code derived from opengenomics/vcftools-tools

RUN apt-get update && apt-get install -y curl g++ pkg-config zlib1g-dev python python-pip
WORKDIR /opt
RUN curl -L -O https://github.com/vcftools/vcftools/releases/download/v0.1.16/vcftools-0.1.16.tar.gz
RUN tar xvzf vcftools-0.1.16.tar.gz && cd vcftools-0.1.16 && ./configure && make && make install

