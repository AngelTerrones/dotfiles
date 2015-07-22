#!/bin/bash
#-------------------------------------------------------------------------------
# Copyright (C) 2015 Angel Terrones <angelterrones@gmail.com>
#-------------------------------------------------------------------------------
# vim plugin instal script

echo -e "\tVIM: make swap, backup and undo folders"
mkdir -p swap backup undo

echo -e "\tVIM: install plugins"
git submodule init
git submodule update
