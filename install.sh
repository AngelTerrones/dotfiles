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

# i3
echo -e "Installing dotfiles: i3"
ln -sfn $PWD/i3/ ~/.i3

# mpd
echo -e "Installing dotfiles: mpd"
ln -sfn $PWD/mpd ~/.mpd

# ncmpcpp
echo -e "Installing dotfiles: ncmpcpp"
ln -sfn $PWD/ncmpcpp ~/.ncmpcpp

# urxvt
echo -e "Installing dotfiles: urxvt"
ln -sfn $PWD/urxvt ~/.urxvt
xrdb ~/.urxvt/Xresources

# zsh
echo -e "Installing dotfiles: zsh"
ln -sfn $PWD/zsh/zshrc ~/.zshrc

# vim
echo -e "Installing dotfiles: vim"
cd vim
source vim_install_pluging.sh
cd ..
ln -sfn $PWD/vim ~/.vim
ln -sfn $PWD/vim/vimrc ~/.vimrc


echo -e "Installing dotfiles: done"
