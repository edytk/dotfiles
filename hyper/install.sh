#!/bin/bash
# Personal information in your .gitlocal, not .gitconfig!

source "$HOME/.files/common/functions.sh"

msg_installing "Linking ~/.hyper.js"

rm -rf $HOME/.hyper.js
ln -s $HOME/.files/hyper/hyper.js $HOME/.hyper.js
