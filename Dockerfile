FROM alpine

RUN apk add --update easy-rsa openvpn openvpn-auth-ldap iptables net-tools&&\
    rm -rf /tmp/*  /cache/*

EXPOSE 1194/udp

WORKDIR /etc/openvpn

CMD ["/bin/sh", "/etc/openvpn/up.sh"]