# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.network "forwarded_port", guest: 8080, host: 3000

  config.vm.provider "virtualbox" do |v|
    v.cpus   = 2
    v.memory = 1024
  end

  config.vm.provision "ansible" do |ansible|
    ansible.galaxy_role_file   = "provisioning/requirements.yml"
    ansible.playbook           = "provisioning/playbook.yml"
    ansible.compatibility_mode = "2.0"
    ansible.become             = true
  end
end
