FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential && \
    apt-get install -y git && \
    apt-get install -y --no-install-recommends cmake && \
    rm /var/lib/apt/lists/* -rf

RUN git clone --depth=1 --branch=release-1.10.0 https://github.com/google/googletest.git /opt/gtest
ENV GTEST_HOME /opt/gtest

VOLUME [ "/tmp/app" ]
WORKDIR /tmp/app
