FROM ubuntu:latest
RUN apt-get -y update && \
   apt-get -y install jq curl
COPY app/ /
RUN chmod +x /scripts/entrypoint.sh
ENTRYPOINT ["/scripts/entrypoint.sh"]
