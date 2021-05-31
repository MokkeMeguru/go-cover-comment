FROM golang:1.16.4
ENV PATH $PATH:/usr/local/go/bin
RUN apt-get update -y -q && \
    apt-get install -y -q bash git python3 wget
RUN /bin/go/bin/go env 
COPY app /
RUN ls -la /scripts
ENTRYPOINT ["/scripts/entrypoint.sh"]
