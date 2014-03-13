# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :dev do |dev|
	  dev.vm.box = "precise32"
	  dev.vm.hostname = "dev"
	  dev.vm.provision :shell, :path => "vscripts/dev-depend.sh"
	  dev.vm.network :forwarded_port, host: 4567, guest: 80
	  dev.vm.network :forwarded_port, host: 3000, guest: 3000 
  end

  config.vm.synced_folder "/home/$USER/Forthlight/Forthlight-core", "/Forthlight/Forthlight-core", create: true
  config.vm.synced_folder "/home/$USER/Forthlight/Forthlight-user", "/Forthlight/Forthlight-user", create: true
end

