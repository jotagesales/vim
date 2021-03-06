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
    mkdir -p $PGCLI_DIR
fi

echo "creating nvim direcotry"
mkdir -p $NEOVIM_DIR


# echo "configure neovim"
# cp -R neovim/* $NEOVIM_DIR

echo "configure pgcli"
cp -r pgcli/* $PGCLI_DIR

# echo "installing spacevim"
curl -sLf https://spacevim.org/install.sh | bash
cp -R spacevim/.SpaceVim.d $HOME


cd ~
pip install neovim
vim +PlugInstall +qall
nvim +PlugInstall +qall
