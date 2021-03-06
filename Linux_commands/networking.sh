### SSH through jumpnode jump-node
ssh -A -t -l JUMPNODE_USER JUMPNODE_ADDRESS \
ssh -A -t -l NODE_USER NODE_ADDRESS

### SSH with password instead of key
ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no USER@HOST

###
ping IP
tracepath IP
treaceroute IP
netstat
ss -a # show established connections
ip -s # on Centos only?


ls /sys/class/net # list network devices
nmcli dev status # network control manager. dev = device
nmcli con show # show connection
nmcli con add help # help
nmcli con add con-name "CONNECTION_NAME" autoconnect yes type ethernet ifname eth1 # double tab forr autocomplete
ip route
nmcli con add con-name "CONNECTION_NAME" type ethernet ifname eth1 ip4 10.0.0.16 gw4 10.0.0.1 # create static connection
nmcli con add "CONNECTION_NAME" +ipv4.dns 1.1.1.1
nmcli con down "CONNECTION_NAME"
nmcli con up "CONNECTION_NAME"
nmcli con mod "CONNECTION_NAME" connection.autoconnect yes # modify
nmcli con del "CONNECTION_NAME"

less /etc/resolv.conf

hostnamectl set-hostname HOSTNAME
exec bash
hostnamectl status

# Check if network card is set to autostart on boot
systemctl list-units | grep network.target
systemctl list-dependencies multi-user.target | grep network
less /etc/sysconfig/network-scripts/ifcfg-ens3
# Do the nmcli con mod to set autoconnect
