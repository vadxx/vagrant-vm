Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu2004"
    config.vm.hostname = "vbuntu"
    config.vm.provider "virtualbox" do |vb|
        vb.name = "vbuntu"
        vb.gui = true
        vb.cpus = 2
        vb.memory = "2048"
        vb.customize ["modifyvm", :id, "--vram", "128"]
    end

    config.vm.synced_folder "../", "/vm/" # share user home folder with vm

    config.vm.provision:shell, path: "bootstrap.sh"
    config.vm.provision:shell, path: "apps.sh"
end