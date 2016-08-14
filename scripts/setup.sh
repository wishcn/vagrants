#!/usr/bin/env bash

# 163 sources
sudo cp /etc/apt/sources.list /etc/apt/sources.list.ubuntu
sudo sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

# update
sudo apt-get -y update && apt-get -y upgrade

# wget curl
sudo apt-get install -y wget curl git

# docker
# sudo apt-get install -y docker.io

# tmux zsh
sudo apt-get install -y tmux zsh

# tmux config
wget -O ~/.tmux.conf https://raw.githubusercontent.com/xxstop/vagrants/ubuntu4win/.tmux.conf

# oh my zsh
sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo sed -i "s/\/home\/vagrant:\/bin\/bash/\/home\/vagrant:\/bin\/zsh/g" /etc/passwd

# emacs vim
sudo apt-get install -y vim emacs
