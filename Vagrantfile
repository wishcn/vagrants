# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
require 'json'

VAGRANTFILE_API_VERSION = "2"
scriptPath = $scriptPath ||= File.dirname(__FILE__) + "/scripts"

initScriptPath = $scriptPath + "/setup.sh"
configScriptPath = $scriptPath + "/config.sh"

Vagrant.require_version '>=1.8.4'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/xenial64"

  # config.vm.network "forwarded_port", guest: 80, host: 8080
  
  config.vm.synced_folder "~/PhpstormProjects", "/w/"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
  
  config.vm.provision "shell" do |s|
    s.privileged = false
    s.inline = "echo \"$1\" > ~/.ssh/$2 && chmod 600 ~/.ssh/$2"
    s.args = [File.read(File.expand_path("~/.ssh/id_rsa")), "~/.ssh/id_rsa".split('/').last]
  end

  config.vm.provision "shell", path: initScriptPath, privileged: false
  config.vm.provision "shell", path: configScriptPath, privileged: false
end
