FROM ubuntu:xenial

EXPOSE 873

COPY rsyncd.conf /etc/rsyncd.conf
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN true && \
    apt-get update && \
    apt-get install -y --no-install-recommends gosu rsync ca-certificates \
        quilt build-essential crossbuild-essential-armhf python3 gawk \
        librsvg2-bin xsltproc imagemagick gettext fakeroot \
        ttf-bitstream-vera && \
    mkdir /xcsoar && chown nobody:nogroup /xcsoar && \
    chmod 0755 /usr/local/bin/entrypoint.sh && \
    apt-get clean && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/log/*

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
