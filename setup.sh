#!/bin/sh

cp tmux.conf ~/.tmux.conf
cp vimrc ~/.vimrc
cp vimrc.local ~/.vimrc.local
cp vimrc.local.bundles ~/.vimrc.local.bundles
cd ~
vim +PlugInstall +qall