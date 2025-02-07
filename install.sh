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

# tmux
TMUX_FOLDER="$HOME/.config/tmux"
if [[ ! -d $TMUX_FOLDER ]]; then
  git clone https://github.com/tmux-plugins/tpm tmux/plugins/tpm
  ln -sfn $PWD/tmux/ $TMUX_FOLDER
fi

# nvim
echo -e "Installing dotfiles: nvim"
ln -sfn $PWD/nvim/ ~/.config/nvim

if [[ "$1" = "mpd" ]]; then
  # mpd
  echo -e "Installing dotfiles: mpd"
  ln -sfn $PWD/mpd ~/.config/mpd

  # ncmpcpp
  echo -e "Installing dotfiles: ncmpcpp"
  ln -sfn $PWD/ncmpcpp ~/.config/ncmpcpp
  mkdir -p ~/.config/ncmpcpp/lyrics
fi

echo -e "Done"
