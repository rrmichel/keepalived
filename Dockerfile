FROM alpine:3.10

LABEL build="Wed 20 Nov 2019 09:59:16 PM CET"

ENV alpine_version="3.10" \
    keepalived_version="2.0.16-r0"

RUN apk add --no-cache keepalived socat

ADD check_alive.sh /check_alive.sh

CMD ["/usr/sbin/keepalived","-f","/etc/keepalived/keepalived.conf","-l","-n"]
