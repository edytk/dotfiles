#!/bin/bash

source "$HOME/.files/common/functions.sh"

# Installing oh-my-zsh
msg_installing "oh-my-zsh..."
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Linking ZSH settings...
msg_installing "Linking ZSH settings..."
rm -rf $HOME/.zshrc $HOME/.oh-my-zsh/custom
ln -s $HOME/.files/zsh/zshrc $HOME/.zshrc
ln -s $HOME/.files/zsh/custom $HOME/.oh-my-zsh/custom

# Installing zsh-autosuggestions
msg_installing "zsh-autosuggestions..."
rm -rf $HOME/.files/zsh/custom/plugins/zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
