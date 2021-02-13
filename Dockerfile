FROM alpine:latest

MAINTAINER i@yangliu.name

ADD sniproxy.conf /root/
ADD run.sh /root/

RUN apk add --no-cache sniproxy && \
    chmod +x /root/run.sh

WORKDIR /root

CMD ["/root/run.sh"]