FROM alpine:latest

RUN apk update \
    && apk --no-cache add dnsmasq tini

ADD etc /

ENTRYPOINT ["tini", "--"]

CMD ["dnsmasq", "--no-daemon"]
