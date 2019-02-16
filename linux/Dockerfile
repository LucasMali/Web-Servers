FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN apt-get update \
  && apt-get install -y \
    libmysqlclient-dev \
    libluajit-5.1-dev \
    libzmq3-dev \
    autoconf \
    pkg-config \
    libfreetype6-dev \ 
    libicu-dev \ 
    libmcrypt-dev \ 
    libpng-dev \ 
    libxslt1-dev \ 
    sudo \ 
    cron \ 
    rsyslog \ 
    mysql-client \ 
    git \
    autoconf \
    pkg-config \
    make \
    gcc \
    g++


WORKDIR /
ADD docker-entrypoint.sh docker-entrypoint.sh
RUN ./docker-entrypoint.sh
    