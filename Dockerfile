FROM ubuntu

RUN apt install openvpn openvpn-auth-ldap iptables net-tools\
    && apt clean \
    &&rm -rf /tmp/*  /cache/*

EXPOSE 1194/udp

WORKDIR /etc/openvpn

CMD ["/bin/sh", "/etc/openvpn/up.sh"]