FROM alpine:3.10

LABEL build="Thu 04 Jul 2019 10:53:53 PM CEST"

ENV alpine_version="3.10" \
    keepalived_version="2.0.16-r0"

RUN apk add --no-cache keepalived socat

ADD check_alive.sh /check_alive.sh

CMD ["/usr/sbin/keepalived","-f","/etc/keepalived/keepalived.conf","-l","-n"]
