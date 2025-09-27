#!/usr/bin/env bash
set -e

IFACE="wlp2s0"              # interface name (use `ip addr` to find it)
ADDRESS="192.168.0.107"     # static IP address
NETMASK="255.255.255.0"     # netmask
GATEWAY="192.168.0.1"       # gateway
DNS="8.8.8.8 1.1.1.1"       # DNS
SSID=""                     # Wi-Fi SSID (name of the network)
PSK=""                      # Wi-Fi пароль (password)

echo "[*] Backing up /etc/network/interfaces..."
sudo cp /etc/network/interfaces /etc/network/interfaces.bak.$(date +%Y%m%d-%H%M%S)

echo "[*] Writing new config..."
sudo tee /etc/network/interfaces >/dev/null <<EOL
# The loopback network interface
auto lo
iface lo inet loopback

# Static Wi-Fi interface
allow-hotplug ${IFACE}
iface ${IFACE} inet static
    address ${ADDRESS}
    netmask ${NETMASK}
    gateway ${GATEWAY}
    dns-nameservers ${DNS}

    wpa-ssid ${SSID}
    wpa-psk ${PSK}
EOL

echo "[*] Restarting networking..."
sudo systemctl restart networking || true
sudo ifdown ${IFACE} || true
sudo ifup ${IFACE} || true

echo "[*] Done. Current IP:"
ip addr show ${IFACE} | grep inet
