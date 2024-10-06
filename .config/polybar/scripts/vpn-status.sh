#!/bin/sh

# IFACE=$(ip addr show | grep ppp | awk '{print $2}')
IFACE=$(ip addr show | grep ppp0 | awk '{print $2}' | head -n 1 | cut -f1 -d ':')

if [ "$IFACE" = "ppp0" ]; then
    echo "%{u#55aa55}$(ip addr show ppp0 | grep inet | awk '{print $2}' | cut -f2 -d ':')%{u-}"
else
    echo "%{F#FF0000}%{u#FF0000}VPN DISCONNECTED%{u-}%{F-}"
fi
