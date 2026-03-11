#!/bin/sh

VPN=$(nmcli con show --active | grep -i wireguard)

IFS='  ' read -ra info <<< "$VPN"

echo ${info[0]}
