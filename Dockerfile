FROM ubuntu

RUN apt update\
    && export DEBIAN_FRONTEND=noninteractive;apt install -y openvpn openvpn-auth-ldap iptables net-tools\
    && apt clean \
    && rm -rf /tmp/*  /cache/*

EXPOSE 1194/udp

WORKDIR /etc/openvpn

CMD ["/bin/sh", "/etc/openvpn/up.sh"]