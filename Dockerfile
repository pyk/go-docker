FROM debian:wheezy
MAINTAINER Bayu Aldi Yansyah <bayualdiyansyah@gmail.com>

# update & install all dependencies
RUN apt-get update && apt-get install -y \
        wget git mercurial \
        --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# download, install & setup workspaces
RUN wget -v https://storage.googleapis.com/golang/go1.3.3.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.3.3.linux-amd64.tar.gz && \
    rm go1.3.3.linux-amd64.tar.gz && \
    printf %"s\n" \ 
        'export PATH=$PATH:/usr/local/go/bin' \
        'export GOPATH=/home' \
        'export PATH=$PATH:$GOPATH/bin' \
        >> /etc/profile && \
    mkdir -p $GOPATH/src/github.com/pyk





