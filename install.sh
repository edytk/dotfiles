#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

if [ -x "functions.sh" ]; then
  . "functions.sh" || exit 1
fi

source "$HOME/.files/common/functions.sh"

main() {

  # Installing dependencies for OS
  if [ "$(uname)" == "Darwin" ]; then
    msg_installing "dependencies for OSx..."
    ./osx/install.sh

    # Installing zsh
    ./zsh/install.sh
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    msg_installing "dependencies for Linux..."
    ./linux/install.sh
  fi

  # Installing sublime text 3
  ./sublime/install.sh

  # Installing vscode
  ./vscode/install.sh

  # Installing NVM, NodeJS and Node modules
  ./node/install.sh

  # Installing git settings
  ./git/install.sh

  # Installing Hyper settings
  ./hyper/install.sh

  # Installing common files
  ./common/install.sh

}

main "$@"