FROM ubuntu:16.04
MAINTAINER Vadim Velikodniy <vadim@velikodniy.name>

ENV DIR /book
RUN mkdir $DIR

#RUN echo "deb http://archive.ubuntu.com/ubuntu/ trusty multiverse" | tee -a /etc/apt/sources.list.d/multiverse.list && \
#    echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y make texlive-xetex texlive-lang-cyrillic texlive-math-extra texlive-fonts-extra texlive-science

VOLUME $DIR
WORKDIR $DIR
