#!/bin/sh

#sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
#sudo mv ./sources.list /etc/apt/
#sudo apt-get update

sudo apt-get install -y vim build-essential gcc make perl
sudo apt install -y git
echo "\n!Complete package installation!\n"

sudo ufw enable
echo "\n!Enabled firewall!\n"

