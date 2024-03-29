#!/bin/bash
#-------------------------------------------------------------------------------
# Copyright (C) 2015 Angel Terrones <angelterrones@gmail.com>
#-------------------------------------------------------------------------------
# install script

echo -e "Installing dotfiles."
PWD=$(pwd)

# git
echo -e "Installing dotfiles: git"
ln -sfn $PWD/git/gitconfig ~/.gitconfig

# zsh
echo -e "Installing dotfiles: zsh"
ln -sfn $PWD/zsh ~/.zsh
ln -sfn $PWD/zsh/zshrc ~/.zshrc

echo -e "Installing dotfiles: done"
