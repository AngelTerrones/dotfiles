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
echo -e "Installing dotfiles: tmux"
TMUX_FOLDER="$HOME/.config/tmux"
if [[ ! -d $TMUX_FOLDER ]]; then
  git clone https://github.com/tmux-plugins/tpm tmux/plugins/tpm
  ln -sfn $PWD/tmux/ $TMUX_FOLDER
  $TMUX_FOLDER/plugins/tpm/scripts/install_plugins.sh
fi

# clangd
echo -e "Installing dotfiles: clangd"
if [[ $(uname) == "Darwin" ]]; then
  ln -sfn $PWD/clangd ~/Library/Preferences/clangd
else
  ln -sfn $PWD/clangd ~/.config/clangd
fi

# nvim
echo -e "Installing dotfiles: nvim (deleting old config)"
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
# symlink the config
ln -sfn $PWD/nvim/ ~/.config/nvim

if [[ "$1" = "mpd" ]]; then
  # mpd
  echo -e "Installing dotfiles: mpd"
  ln -sfn $PWD/mpd ~/.config/mpd
  mkdir -p ~/.config/mpd/playlists

  # ncmpcpp
  echo -e "Installing dotfiles: ncmpcpp"
  ln -sfn $PWD/ncmpcpp ~/.config/ncmpcpp
  mkdir -p ~/.config/ncmpcpp/lyrics
fi

echo -e "Done"
