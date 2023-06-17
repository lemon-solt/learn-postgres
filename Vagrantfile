Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.network "private_network", ip: "192.168.33.12"
    config.vm.network "forwarded_port", guest: 5432, host: 5432
    # config.vm.provision "shell", inline: ""

    config.vm.provider "virtualbox" do |vb|
      # vb.customize ["modifyvm", :id, "--cableconnected1", "on"]
    end

    config.vm.provision "shell", path: "init.sh"
  end