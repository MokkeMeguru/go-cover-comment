FROM ubuntu:latest
RUN apt -y update && \
   apt -y install jq curl
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
