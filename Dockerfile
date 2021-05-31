FROM ubuntu:latest
RUN apt-get update -y && \
    apt-get install -y bash git python wget
RUN wget -q https://golang.org/dl/go1.16.4.linux-amd64.tar.gz && \
    tar -C /bin -xzf go1.16.4.linux-amd64.tar.gz
COPY app /
RUN ls -la /scripts
ENTRYPOINT ["/scripts/entrypoint.sh"]
