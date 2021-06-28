Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu2004"
    config.vm.hostname = "vbuntu"

    config.vagrant.plugins = ["vagrant-vbguest"]

    config.vm.provider "virtualbox" do |vb|
        vb.name = "vbuntu"
        vb.gui = true
        vb.cpus = 2
        vb.memory = "2048"
        vb.customize ["modifyvm", :id, "--vram", "128"]
        vb.customize ["modifyvm", :id, "--usbxhci", "on"]  # USB 3.0
        vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
        vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
        config.vm.network "forwarded_port", guest: 8050, host: 8050
    end

    config.vm.synced_folder "../", "/vm/" # share user home folder with vm

    config.vm.provision:shell, path: "bootstrap.sh"
    config.vm.provision:shell, path: "gui.sh"
    config.vm.provision:shell, path: "apps.sh"

    config.vm.provision "shell", inline: "shutdown -r now"
end