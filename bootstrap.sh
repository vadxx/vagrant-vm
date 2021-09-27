#!/bin/bash

fix_perms() {
	sudo usermod -aG vboxsf $USER
}

update_os() {
	echo "Updating OS..."
	sudo apt update -y && sudo apt upgrade -y
}

setup_welcome_msg() {
	echo "Setting start message..."
	sudo apt -y install cowsay
	sudo echo -e "\necho \"Welcome to Vagrant Ubuntu \" | cowsay\n" >> /home/vagrant/.bashrc
	sudo ln -s /usr/games/cowsay /usr/local/bin/cowsay
}

main() {
	fix_perms
	update_os
	setup_welcome_msg
}

main