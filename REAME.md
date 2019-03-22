# Openvpn

- Openvpn with ldap support on x86.

## Get start

### First, setup CA. Suppose you have a Ubuntu/Debian Linux OS.

```
    sudo apt install easy-rsa openvpn
    make-cadir ~/opevpn
    cd ~/openvpn
    vim vars
    source vars
    ./clean-all
    ./build-ca
    ./build-key-server server
    ./build-dh
    openvpn --genkey --secret keys/ta.key
    cp ca.crt server.crt server.key ta.key dh2048.pem openvpn
```

### Then, use docker-compose to start up.
- `docker-compose build` to build or `docker-compose up -d` to start.