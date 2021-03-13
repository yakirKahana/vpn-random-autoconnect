conns=( $(nmcli con show | grep vpn |grep -o '^\S\+') )
echo ${conns[5]}
