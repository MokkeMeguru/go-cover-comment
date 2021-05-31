FROM golang:1.16.4
RUN apt-get update -y -q && \
    apt-get install -y -q bash git python3 wget
RUN go env 
COPY app /
RUN ls -la /scripts
ENTRYPOINT ["/scripts/entrypoint.sh"]
