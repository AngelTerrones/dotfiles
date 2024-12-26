#!/bin/bash
#-------------------------------------------------------------------------------
# Copyright (C) 2015 Angel Terrones <angelterrones@gmail.com>
#-------------------------------------------------------------------------------
# install script

echo -e "Installing dotfiles..."
PWD=$(pwd)

# git
echo -e "Installing dotfiles: git"
mkdir -p ~/.config/git
ln -sfn $PWD/git/gitconfig ~/.config/git/config

# zsh
echo -e "Installing dotfiles: zsh"
ln -sfn $PWD/zsh ~/.zsh
ln -sfn $PWD/zsh/zshrc ~/.zshrc

echo -e "Done"
