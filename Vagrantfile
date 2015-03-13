Vagrant.configure("2") do |config|
	
	#Ubuntu Trusty AMD 64bits
	config.vm.box = "trustyamd64"
	config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
	config.vm.network :private_network, ip: "192.168.70.100"

	config.vm.synced_folder "./www", "/var/www/html",
		id: "v-data",
		:owner=> 'vagrant', :group=>'www-data',
		:mount_options => ['dmode=775', 'fmode=775']
		

	config.vm.provider "virtualbox" do |v|
		v.memory = 1024
		v.cpus = 2
	end	
	
	config.vm.provision :shell, :inline => "echo \"America/Sao_Paulo\" | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata"
	
	#config.vm.boot_timeout = 600

	config.vm.network :forwarded_port, guest: 80,   host: 80       # apache/nginx
	config.vm.network :forwarded_port, guest: 8080, host: 8080     # oracle/apex
	config.vm.network :forwarded_port, guest: 1522, host: 1522     # oracle
	config.vm.network :forwarded_port, guest: 8000, host: 8000     # symfony
	config.vm.network :forwarded_port, guest: 3306, host: 3306     # mysql

	#config.vm.network :forwarded_port, guest: 3000, host: 3000    # rails
	#config.vm.network :forwarded_port, guest: 9292, host: 9292    # rack
	#config.vm.network :forwarded_port, guest: 4567, host: 4567    # sinatra
	#config.vm.network :forwarded_port, guest: 1080, host: 1080    # mailcatcher
	#config.vm.network :forwarded_port, guest: 8888, host: 8888    # jasmine
	#config.vm.network :forwarded_port, guest: 5432, host: 5432    # postgresql
	#config.vm.network :forwarded_port, guest: 6379, host: 6379    # redis
	#config.vm.network :forwarded_port, guest: 9200, host: 9200    # elasticsearch
	#config.vm.network :forwarded_port, guest: 27017, host: 27017  # mongodb
	#config.vm.network :forwarded_port, guest: 2368, host: 2368    # CMS Ghost
	#config.vm.network :forwarded_port, guest: 2369, host: 2369    # CMS Ghost


	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "puppet/manifests"
		puppet.module_path = "puppet/modules"
		puppet.options = ['--verbose']
	end

end
