# -*- mode: ruby -*-
# vi: set ft=ruby :

  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.

Vagrant.configure("2") do |config|
  config.vm.define "centos7" do |centos7|
    centos7.vm.box = "generic/centos7"
    centos7.vm.synced_folder ".", "/workspace"
    centos7.vm.hostname = "sion"
    centos7.vm.network "forwarded_port", guest: 8080, host: 8080
    centos7.vm.network "forwarded_port", guest: 9000, host: 9000
    centos7.vm.network "private_network", ip: "192.168.33.10"
    centos7.vm.provider :virtualbox do |vb|
      vb.cpus = 2
      vb.memory = 2048
    end
    centos7.vm.provision "shell", inline: <<-SHELL
    sudo yum install -y vim epel-release ansible git
    sudo yum install -y java-11-openjdk java-11-openjdk-devel
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    sudo yum install -y jenkins

    sudo timedatectl set-timezone Asia/Seoul
    sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
    sudo firewall-cmd --zone=public --permanent --add-port=9000/tcp
    sudo firewall-cmd --reload
    sudo systemctl start jenkins.service
    SHELL
  end
end