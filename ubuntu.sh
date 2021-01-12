#!/bin/bash

apt-get update -y && apt-get upgrade -y

apt-get install tmux git build-essential python cargo

##
# System tools
##
# install diskonaut
cargo install diskonaut
