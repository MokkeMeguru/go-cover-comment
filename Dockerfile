FROM ubuntu:latest
RUN apt-get install -y bash
COPY app /
RUN ls -la /scripts
ENTRYPOINT ["/scripts/entrypoint.sh"]
