FROM debian:stretch-slim

MAINTAINER martin@katoni.dk

ENV MEMSQL_STUDIO_VERSION=1.4.0

RUN apt-get update && apt-get install -y apt-transport-https ca-certificates gnupg wget --no-install-recommends \
    && wget -q -O - 'https://release.memsql.com/release-aug2018.gpg' | apt-key add - \
    && echo "deb https://release.memsql.com/production/debian memsql main" | tee /etc/apt/sources.list.d/memsql.list \
    && apt-get update \
    && apt-get install -y memsql-studio=$MEMSQL_STUDIO_VERSION --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

CMD memsql-studio