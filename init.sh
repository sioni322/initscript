#!/bin/sh

#sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
#sudo mv ./sources.list /etc/apt/
#sudo apt-get update

sudo apt-get install -y vim build-essential gcc make perl net-tools

sudo apt-get install -y ctags

sudo apt install -y git

sudo mv -f 01-network-manager-all.yaml /etc/netplan/
sudo netplan apply
sudo systemctl restart networking

sudo ufw enable


