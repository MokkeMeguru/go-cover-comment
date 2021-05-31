FROM ubuntu:latest
RUN apt-get install -y bash git python
COPY app /
RUN ls -la /scripts
ENTRYPOINT ["/scripts/entrypoint.sh"]
