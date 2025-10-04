#!/usr/bin/env bash
# disable-sleep.sh

set -e

echo "[INFO] Mask systemd targets..."
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

echo "[INFO] Update logind.conf..."
sudo sed -i 's/^#\?HandleLidSwitch=.*/HandleLidSwitch=ignore/' /etc/systemd/logind.conf
sudo sed -i 's/^#\?HandleLidSwitchDocked=.*/HandleLidSwitchDocked=ignore/' /etc/systemd/logind.conf
sudo sed -i 's/^#\?HandleSuspendKey=.*/HandleSuspendKey=ignore/' /etc/systemd/logind.conf
sudo sed -i 's/^#\?HandleHibernateKey=.*/HandleHibernateKey=ignore/' /etc/systemd/logind.conf

echo "[INFO] Restart systemd-logind..."
sudo systemctl restart systemd-logind

echo "[INFO] Sleep/hibernate disabled permanently."
