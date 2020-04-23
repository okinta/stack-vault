FROM debian:buster-slim

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* \
    && wget https://github.com/lucid-kv/lucid/releases/download/0.1.4/lucid-linux.tar.gz \
    && tar -xzf lucid-linux.tar.gz \
    && mv lucid /usr/local/bin \
    && rm -f lucid-linux.tar.gz \
    && apt-get remove -y --purge wget && apt-get -y autoremove

EXPOSE 7020

COPY lucid.yml /etc/lucid/lucid.yml
CMD ["lucid", "--config", "/etc/lucid/lucid.yml", "server"]
