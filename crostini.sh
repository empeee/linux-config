#!/bin/bash
# Get to an updated base
sudo apt update
sudo apt upgrade -y

# Most things are simple apt installs
sudo apt install terminator python3 python3-pip idle3 python-numpy python-scipy python-matplotlib ipython jupyter python-pandas python-sympy python-nose gimp -y

# VS Code needs a little work
curl -L "https://go.microsoft.com/fwlink/?LinkID=760868" > ~/vscode.deb
sudo apt install ~/vscode.deb -y
rm ~/vscode.deb
