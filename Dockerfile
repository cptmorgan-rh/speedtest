FROM alpine:latest

ADD speedtest /usr/local/bin

RUN chmod +x /usr/local/bin/speedtest

ENTRYPOINT ["speedtest", "--accept-license"]
