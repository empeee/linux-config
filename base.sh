#!/bin/bash
# Get to an updated base
sudo apt update
sudo apt upgrade -y

# Basic installs
sudo apt install vim tmux htop iftop mc -y

# Git clones
git clone https://github.com/empeee/dotfiles ~/dotfiles

# Run setups
~/dotfiles/makesymlinks.sh
~/dotfiles/vim_setup.sh
