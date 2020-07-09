#!/bin/bash
# Get to an updated base
sudo apt update
sudo apt upgrade -y

# Most things are simple apt installs
sudo apt install terminator gimp -y

# Python clean install
sudo apt install python3 python3-pip python3-venv idle3 -y

# Make python venvs
mkdir -p ~/python-venv && cd ~/python-venv

# Make default scipy venv
python3 -m venv scipy
source scipy/bin/activate
pip install numpy scipy matplotlib ipython jupyter pandas sympy nose
deactivate

# VS Code needs a little work
curl -L "https://go.microsoft.com/fwlink/?LinkID=760868" > ~/vscode.deb
sudo apt install ~/vscode.deb -y
rm ~/vscode.deb
