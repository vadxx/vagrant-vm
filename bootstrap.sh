#!/bin/bash

set_vm_permissions() {
	echo "Fixing permissions for VBOX..."
	groups
	sudo usermod -aG vboxusers $USER
	exec su -l $USER
	groups
}

update_os() {
	echo "Updating OS..."
	sudo apt update && sudo apt upgrade
}

setup_welcome_msg() {
	echo "Setting start message..."
	sudo apt -y install cowsay
	sudo echo -e "\necho \"Welcome to Vagrant Ubuntu \" | cowsay\n" >> /home/vagrant/.bashrc
	sudo ln -s /usr/games/cowsay /usr/local/bin/cowsay
}

main() {
	# set_vm_permissions
	update_os
	setup_welcome_msg
}

main