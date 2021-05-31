FROM ubuntu:latest
RUN apt-get install -y bash
COPY app /
ENTRYPOINT ["bash", "-c", "/scripts/entrypoint.sh"]
