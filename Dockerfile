FROM ubuntu:latest
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH /root/go
ENV GOROOT /usr/local/go
RUN mkdir /root/go
RUN apt-get update -y -q && \
    apt-get install -y -q bash git python3 wget
RUN wget -q https://golang.org/dl/go1.16.4.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.16.4.linux-amd64.tar.gz 
COPY app /
RUN ls -la /scripts
ENTRYPOINT ["/scripts/entrypoint.sh"]
