#/bin/bash
# get all VPN connections from nmcli
conns=( $(nmcli con show | grep vpn |grep -o '^\S\+') )
num_conns=${#conns[@]}
random=$(($RANDOM % $num_conns))
echo ${conns[$random]}

# code by solsTiCe at askubuntu.com
# userprofile: askubuntu.com/users/350004/solstice
# taken from https://askubuntu.com/a/1033606
while ! nmcli dev status|grep -q connected; do
    sleep 1
done
exec nmcli con up ${conns[$random]}

