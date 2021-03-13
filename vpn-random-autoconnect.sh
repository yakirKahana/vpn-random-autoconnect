#/bin/bash
# get all VPN connections from nmcli
conns=( $(nmcli con show | grep vpn |grep -o '^\S\+') )
num_conns=${#conns[@]}
random=$(($RANDOM % $num_conns))
echo ${conns[$random]}
