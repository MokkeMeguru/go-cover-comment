FROM ubuntu:latest
RUN apt-get update -y -qq && \
    apt-get install -y -qq bash git python3 wget
RUN wget -q https://golang.org/dl/go1.16.4.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.16.4.linux-amd64.tar.gz && \
    export PATH=$PATH:/usr/local/go/bin
RUN which go
COPY app /
RUN ls -la /scripts
ENTRYPOINT ["/scripts/entrypoint.sh"]
