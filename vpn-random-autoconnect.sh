#/bin/bash

conns=( $(nmcli con show | grep vpn |grep -o '^\S\+') )
num_conns=${#conns[@]}
echo ${conns[5]}
echo $num_conns
