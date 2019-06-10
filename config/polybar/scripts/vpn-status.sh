#!/bin/sh

IFACE=$(ifconfig | grep ppp | awk '{print $1}')

if [ "$IFACE" = "ppp0" ]; then
    echo "%{u#55aa55}$(ifconfig ppp0 | grep inet | awk '{print $2}' | cut -f2 -d ':')%{u-}"
else
    echo "%{F#FF0000}%{u#FF0000}VPN DISCONNECTED%{u-}%{F-}"
fi
