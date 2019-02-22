#!/bin/bash

source "$HOME/.files/common/functions.sh"

RUBY_VERSION=2.3.3

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  msg_installing "Ruby..."
  sudo apt-get install ruby ruby-dev -qqy
  msg_ok "ruby and ruby-dev"
fi

rm -rf $HOME/.ruby-version
echo "$RUBY_VERSION" > $HOME/.ruby-version
msg_ok "$HOME/.ruby-version"

msg_installing "Ruby Version Manager (RVM) ..."
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.profile
msg_ok "nvm"

if test $(which rvm)
then
  msg_checking "rvm"
  msg_installing "rvm requirements and ruby..."
  rvm requirements
  rvm install ruby-$RUBY_VERSION
  rvm use ruby-$RUBY_VERSION
  rvm rubygems current
  msg_ok "rvm requirements and ruby"
fi

msg_installing "gems..."
if test $(which gem)
then
  msg_checking "gem"
  gem install $(cat ~/.files/ruby/gems|grep -v "#")
  msg_ok "gems"
fi
