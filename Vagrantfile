Vagrant.configure("2") do |config|
    config.vm.box = "trustyamd64"
    config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    config.vm.network :private_network, ip: "192.168.70.100"
	config.vm.synced_folder "./www", "/var/www/html", id: "vagrant-root",
		owner: "vagrant", group: "www-data",
		mount_options: ["dmode=775,fmode=664"]
	
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
	puppet.module_path = "puppet/modules"
    puppet.options = ['--verbose']
  end

end