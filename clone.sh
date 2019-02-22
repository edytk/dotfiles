#!/bin/sh

if [ ! -d "$HOME/.files" ]; then
  echo "Installing .files for the first time"
  git clone --depth=1 https://github.com/edytk/.files.git "$HOME/.files"
  cd "$HOME/.files"
else
  echo ".files is already cloned"
fi

echo "please execute the command -> sh ~/.files/install.sh"
