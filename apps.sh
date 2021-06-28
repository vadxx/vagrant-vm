#!/bin/bash

vscode() {
	wget -q "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O vscode.deb
	sudo apt install -y ./vscode.deb
	rm -f vscode.deb
}

main() {
	vscode
}

main