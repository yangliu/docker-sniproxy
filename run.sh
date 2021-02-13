#!/bin/sh

if [ -z "${NAMESERVER}" ]; then
  NAMESERVER=$(grep nameserver /etc/resolv.conf | awk '{print $2}')
fi

echo "Setting the resolver to ${NAMESERVER}..."
sed -i "/nameserver\s.*/nameserver ${NAMESERVER}/g" /root/sniproxy.conf

echo "Launch sniproxy"
$(which sniproxy) -c /root/sniproxy.conf -f