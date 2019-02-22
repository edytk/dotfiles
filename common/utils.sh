#!/bin/bash

source "$HOME/.files/common/functions.sh"

update () {
  msg_updating "Updating OS..."
  sudo apt-get update -qqy
}

upgrade () {
  msg_updating "Upgrading OS..."
  export DEBIAN_FRONTEND="noninteractive" \
    && sudo apt-get -o Dpkg::Options::="--force-confnew" upgrade -qqy
}

install_package () {
  msg_installing "$1..."
  sudo apt-get install $1 -qqy
}

add_repository () {
  msg_installing "$1..."
  sudo add-apt-repository $1 -qqy
}
