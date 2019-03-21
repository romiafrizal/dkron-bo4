FROM ubuntu:18:04
RUN apt-get update && rm -rf /var/lib/apt/lists/* \
    && echo "deb [trusted=yes] https://apt.fury.io/victorcoder/ /" >> /apt/sources.list \
    && apt-get install -qy dkron

COPY config.json /etc/dkron/
EXPOSE 8080/tcp