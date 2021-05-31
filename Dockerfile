FROM ubuntu:latest
COPY entrypoint.sh /entrypoint.sh
ENDPOINT ["/entrypoint.sh"]
