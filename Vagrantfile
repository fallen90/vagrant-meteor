# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  #which operating system to load
  config.vm.box = "ubuntu/xenial64"
  #configure the ram, minimum 2048 MB
  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
  end

  config.vm.provision "shell", inline: <<-SHELL
     sudo apt-get update
     sudo apt-get -u dist-upgrade -y
     sudo apt-get install -y --no-install-recommends build-essential bzip2 curl ca-certificates git graphicsmagick python git-core curl
  SHELL
  config.vm.provision "shell", :path => "provision/nvm.sh", privileged: false
  config.vm.provision "shell", :path => "provision/meteor.sh", privileged: false

  #setup port forwarding for meteor and others like mongo and tests
  # # meteor
  config.vm.network :forwarded_port, guest: 3000, host: 3000, auto_correct: true
  # # meteor test
  config.vm.network :forwarded_port, guest: 3005, host: 3005, auto_correct: true
  # # meteor mongo
  config.vm.network :forwarded_port, guest: 3001, host: 3001, auto_correct: true
end
