#!/bin/bash

source "$HOME/.files/common/functions.sh"

# Removing default system files
msg_installing "Removing default system files..."
rm -rf $HOME/.bashrc $HOME/.bash_profile $HOME/.profile $HOME/.curlrc $HOME/.wgetrc

# Installing default sytem files
msg_installing "default sytem files..."

ln -s $HOME/.files/common/bashrc $HOME/.bashrc
msg_ok "$HOME/.bashrc"

ln -s $HOME/.files/common/bash_profile $HOME/.bash_profile
msg_ok "$HOME/.bash_profile"

ln -s $HOME/.files/common/profile $HOME/.profile
msg_ok "$HOME/.profile"

ln -s $HOME/.files/common/curlrc $HOME/.curlrc
msg_ok "$HOME/.curlrc"

ln -s $HOME/.files/common/wgetrc $HOME/.wgetrc
msg_ok "$HOME/.wgetrc"
