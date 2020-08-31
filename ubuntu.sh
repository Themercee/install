#!/bin/bash

apt-get update -y && apt-get upgrade -y

apt-get install tmux git build-essential python zsh ruby cargo

# install zsh
curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh

##
# System tools
##
# install diskonaut
cargo install diskonaut
