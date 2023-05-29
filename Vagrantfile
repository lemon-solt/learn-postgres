Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.network "private_network", ip: "127.0.0.1"
    config.vm.network "forwarded_port", guest: 5432, host: 55432
    # config.vm.provision "shell", inline: ""

    config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--cableconnected1", "off"]
    end

    config.vm.provision "shell", path: "init.sh"
  end