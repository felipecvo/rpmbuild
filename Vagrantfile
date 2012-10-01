# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]

  config.vm.define :builder do |srv|
    srv.vm.customize ["modifyvm", :id, "--memory", 1024]
    srv.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    srv.vm.box = "centos62-vboxadd"
    srv.vm.host_name = 'builder'

    srv.vm.provision :shell, :path => 'builder.sh'
  end

  config.vm.define :client do |srv|
    srv.vm.customize ["modifyvm", :id, "--memory", 380]

    srv.vm.box = "centos62-vboxadd"

    srv.vm.host_name = 'client'
  end
end
