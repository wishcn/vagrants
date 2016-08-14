#!/usr/bin/env bash

# update
sudo apt-get -y update && apt-get -y upgrade

# wget curl
sudo apt-get install -y wget curl git

# docker
sudo apt-get install -y docker.io

# tmux zsh
sudo apt-get install -y tmux zsh

# tmux config
read -d '' tmuxConf <<EOF
set -g prefix C-l
unbind C-b
EOF
echo $tmuxConf > ~/.tmux.conf

# oh my zsh
sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo sed -i "s/\/home\/vagrant:\/bin\/bash/\/home\/vagrant:\/bin\/zsh/g" /etc/passwd

# emacs vim
sudo apt-get install -y vim emacs
