#!/bin/sh

STATUS=$(nmcli con show --active | grep -i wireguard)

if [[ -n "$STATUS" ]]; then
	printf '{"text":"VPN(✓)","class":"enabled"}'
else 
	printf '{"text":"VPN(✖)","class":"disabled"}'
fi
