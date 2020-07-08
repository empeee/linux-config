#!/bin/bash
# Get to an updated base
sudo apt update
sudo apt upgrade -y

# Most things are simple apt installs
sudo apt install terminator gimp python3 python3-pip idle3 -y
python3 -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

# VS Code needs a little work
curl -L "https://go.microsoft.com/fwlink/?LinkID=760868" > ~/vscode.deb
sudo apt install ~/vscode.deb -y
rm ~/vscode.deb
