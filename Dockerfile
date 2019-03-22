FROM alpine

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.version=$VERSION \
      org.label-schema.vcs-url="e.g. https://github.com/microscaling/microscaling"

RUN apk add --update easy-rsa openvpn openvpn-auth-ldap iptables net-tools&&\
    rm -rf /tmp/*  /cache/*

EXPOSE 1194/udp

WORKDIR /etc/openvpn

CMD ["/bin/sh", "/etc/openvpn/up.sh"]