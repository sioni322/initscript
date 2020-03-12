#!/bin/sh

#sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
#sudo mv ./sources.list /etc/apt/
#sudo apt-get update

sudo apt-get install -y vim build-essential gcc make perl net-tools mdadm lvm2 openssh-server resolvconf

sudo apt-get install -y ctags

sudo apt install -y git

sudo cp -f 01-network-manager-all.yaml /etc/netplan/
sudp cp -f head /etc/resolvconf/resolv.conf.d/
sudo netplan apply
sudo systemctl restart networking

sudo ufw enable
sudp ufw allow 22/tcp

