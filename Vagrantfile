Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu2004"
    config.vm.define "ubuntu2004" do |ubuntu|
        ubuntu.vm.hostname = "ubuntu"
    end

    config.vm.provider "virtualbox" do |vb|
        vb.gui = true
        vb.cpus = 2
        vb.memory = "2048"
        vb.customize ["modifyvm", :id, "--vram", "128"]
    end

    config.vm.synced_folder "../", "/vm/" # share user home folder with vm

    config.vm.provision:shell, path: "bootstrap.sh"
    config.vm.provision:shell, path: "apps.sh"
end