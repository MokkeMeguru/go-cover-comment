FROM ubuntu:latest

COPY app /

ENTRYPOINT ["/scripts/entrypoint.sh"]
