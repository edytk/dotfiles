#!/bin/bash
#!/bin/bash

source "$HOME/.files/common/functions.sh"
source common/utils.sh

update
upgrade

if which $(cat packages|grep -v "#") &> /dev/null; then
  msg_installing $(cat packages|grep -v "#")
else
  # Install all packages listed in the packages file
  sudo apt-get install $(cat packages|grep -v "#")
  msg_ok "$(cat packages|grep -v "#") OK"
fi

update
sudo apt-get autoclean