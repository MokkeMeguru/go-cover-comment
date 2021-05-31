FROM ubuntu:latest
RUN apt-get update -y && \
    apt-get install -y bash git python go
COPY app /
RUN ls -la /scripts
ENTRYPOINT ["/scripts/entrypoint.sh"]
