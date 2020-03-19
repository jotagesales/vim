#!/bin/sh

TMUX_FILE="${HOME}/.tmux.conf"
VIMRC="${HOME}/.vimrc"
LOCAL_VIMRC="${HOME}/.vimrc.local"
LOCAL_BUNDLES_VIMRC="${HOME}/.vimrc.local.bundles"
ZSH="${HOME}/.zshrc"
CONFIG_DIR="${HOME}/.config"
NEOVIM_DIR="$CONFIG_DIR/nvim"
PGCLI_DIR="$CONFIG_DIR/pgcli"

cp tmux.conf $TMUX_FILE
cp vimrc $VIMRC
cp vimrc.local $LOCAL_VIMRC
cp vimrc.local.bundles $LOCAL_BUNDLES_VIMRC
cp zshrc $ZSH

echo "checking config directory"
if [ ! -d "${HOME}/.config" ] 
then
    mkdir -p $NEOVIM_DIR
    mkdir -p $PGCLI_DIR
fi

echo "configure neovim"
cp -r neovim/* $NEOVIM_DIR

echo "configure pgcli"
cp -r pgcli/* $PGCLI_DIR

# cd ~
# vim +PlugInstall +qall
nvim +PlugInstall +qall
