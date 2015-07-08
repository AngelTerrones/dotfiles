#!/bin/bash
#-------------------------------------------------------------------------------
# Copyright (C) 2015 Angel Terrones <angelterrones@gmail.com>
#-------------------------------------------------------------------------------
# vim plugin instal script

echo -e "\tVIM: install pathogen"
mkdir -p autoload bundle
curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd bundle
echo -e "\tVIM: install gruvox"
git clone https://github.com/morhetz/gruvbox

echo -e "\tVIM: install ctrlp"
git clone https://github.com/kien/ctrlp.vim

echo -e "\tVIM: install buffergator"
git clone https://github.com/jeetsukumaran/vim-buffergator

echo -e "\tVIM: install easyalign"
git clone https://github.com/junegunn/vim-easy-align

echo -e "\tVIM: install easymotion"
git clone https://github.com/easymotion/vim-easymotion

echo -e "\tVIM: install airline"
git clone https://github.com/bling/vim-airline

cd ..
