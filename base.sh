#!/bin/bash
# Get to an updated base
sudo apt update
sudo apt upgrade -y

# Basic installs
sudo apt install vim tmux htop iftop mc -y

# Git clones
mkdir -p ~/.vim/tmp
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/empeee/dotfiles ~/dotfiles
git clone https://github.com/powerline/fonts.git ~/fonts --depth=1

# Run setups
~/dotfiles/makesymlinks.sh
cd ~/fonts
./install.sh

# Cleanup
cd
rm -rf fonts
