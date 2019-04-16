FROM ubuntu:18.04
MAINTAINER Vadim Velikodniy <vadim@velikodniy.name>

ENV DIR /book
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y apt-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y make texlive-xetex texlive-lang-cyrillic texlive-fonts-extra texlive-science && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME $DIR
WORKDIR $DIR
