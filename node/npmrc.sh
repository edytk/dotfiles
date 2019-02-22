#!/bin/bash

source "$HOME/.files/common/functions.sh"

NPMRC_FILE="$HOME/.npmrc"

# rm -rf $NPMRC_FILE

if [ -e $NPMRC_FILE ]
then
  msg_ok "$NPMRC_FILE already exists"
else
  msg "Your npm init name:"
  read NPM_INIT_NAME
  msg "Your npm init email:"
  read NPM_INIT_EMAIL
  msg "Your npm init url:"
  read NPM_INIT_URL

echo "init.author.name=$NPM_INIT_NAME
init.author.email=$NPM_INIT_EMAIL
init.author.url=$NPM_INIT_URL
init.version=0.0.1
init.license=MIT" > $HOME/.npmrc

  msg_ok "successfully created file $NPMRC_FILE"
fi
