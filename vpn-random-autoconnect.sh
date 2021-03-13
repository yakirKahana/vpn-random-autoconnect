#!/bin/bash
# This code derived from https://askubuntu.com/a/1033606
# Originally by solsTiCe at askubuntu.com
# userprofile: askubuntu.com/users/350004/solstice

while ! nmcli dev status|grep -q connected; do
    sleep 1
done

# get all VPN connections from nmcli
conns=( $(nmcli con show | grep vpn |grep -o '^\S\+') )
num_conns=${#conns[@]}
random=$(($RANDOM % $num_conns))
exec nmcli con up ${conns[$random]}

