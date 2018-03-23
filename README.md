# linux-config
Set of scripts to get to my working config from a bare-bones Linux install. Currently only tested with Debian 9.

## To Start
Obviously you need git installed to clone this repo to being with, then clone this repo.
```
sudo apt update && \
sudo apt upgrade -y && \
sudo apt install git -y && \
git clone https://github.com/empeee/linux-config ~/linux-config
```

Also configure git if you plan to push from this machine.
```
git config --global user.name "Your Name"
git config --global user.email "youremail@gmail.com"
git config --global push.default simple
```

## base.sh
```
~/linux-config/base.sh
```
- Installs and configures my commonly used tools:
  - vim
  - tmux
  - htop
  - iftop
  - mc
- Clones some necessary git repos
- Runs supporting setup scripts

After running you should open up vim and install plugins.
```
vim
:PluginInstall
:q
:q
```
## docker.sh
```
~/linux-config/docker.sh
```
Runs the Debain docker instructions [here](https://docs.docker.com/install/linux/docker-ce/debian/)
