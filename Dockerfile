# Golang Compiler

FROM debian:wheezy
MAINTAINER Bayu Aldi Yansyah <bayualdiyansyah@gmail.com>

# configuration
ENV GO_FILE go1.3.3.linux-amd64.tar.gz

# update & install all dependencies
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    wget git mercurial ca-certificates --no-install-recommends && \
    wget --no-check-certificate https://storage.googleapis.com/golang/$GO_FILE && \
    tar -C /usr/local -xzf $GO_FILE && \
    rm $GO_FILE && \
    apt-get remove -y wget && \
    apt-get autoremove -y

# Setup ENV
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH $HOME
ENV PATH $PATH:$GOPATH/bin