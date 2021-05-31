FROM ubuntu:latest
RUN apt-get install -y bash
COPY app /
ENTRYPOINT ["/scripts/entrypoint.sh"]
