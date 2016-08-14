# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
require 'json'

VAGRANTFILE_API_VERSION = "2"
scriptPath = $scriptPath ||= File.dirname(__FILE__) + "/scripts"

initScriptPath = $scriptPath + "/setup.sh"

Vagrant.require_version '>=1.8.4'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 22, host: 2222
  
  config.vm.synced_folder "~/PhpstormProjects", "/w/"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
   end

  config.vm.provision "shell", path: initScriptPath, privileged: false
end
