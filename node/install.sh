#!/bin/bash

source "$HOME/.files/common/functions.sh"

NODE_VERSION=8

if test $(which curl)
then
  msg_checking "curl"
  msg_installing "NVM and NodeJS..."
  curl -o- -s https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
  msg_ok "nvm"
fi

# nvm
if test $(which nvm)
then
  msg_checking "nvm"
  msg_installing "nvm"
  nvm install $NODE_VERSION
  rm -rf $HOME/.nvmrc
  echo "$NODE_VERSION" > $HOME/.nvmrc
  nvm use
  nvm alias default $NODE_VERSION
  node -v
  msg_ok "$HOME/.nvmrc"
fi

msg_installing "npm packages..."

if test $(which yarn)
then
  yarn global add $(cat ~/.files/node/globals|grep -v "#")
  msg_ok "add globals node modules using yarn"
elif test $(which npm)
then
  npm install -g $(cat ~/.files/node/globals|grep -v "#")
  msg_ok "add globals node modules using npm"
fi

~/.files/node/npmrc.sh
