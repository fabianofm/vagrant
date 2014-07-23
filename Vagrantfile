Vagrant.configure("2") do |config|
    config.vm.box = "precise64novo"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    config.vm.network :private_network, ip: "192.168.70.100"
    config.vm.synced_folder "./www", "/var/www"
	
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
	puppet.module_path = "puppet/modules"
    puppet.options = ['--verbose']
  end

end