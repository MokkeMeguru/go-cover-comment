FROM ubuntu:latest
RUN apt-get install -y ca-certificates curl jq
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
