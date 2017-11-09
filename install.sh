#!/bin/bash

# Install Zsh, git, and vim
sudo apt-get install zsh vim git

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

set -e

if [ ! -n "$DOTFILES"  ]; then
    DOTFILES=~/.dotfiles
fi

if [ -d "$DOTFILES" ]; then
    printf ".dotfiles already exists\n"
    printf "You'll need to remove $DOTFILES to reinstall\n"
    exit
fi

printf "Cloning Dotfiles Downloader\n"
env git clone --depth=1 https://github.com/werl/dotfiles_downloader.git $DOTFILES || {
    printf "Error: git clone of Dotfiles Downloader repo failed\n"
}

if [ ! -n "$VIMRC" ]; then
    VIMRC=~/.vimrc
fi
if [ -f "$VIMRC" ]; then
    printf "Moving old .vimrc to .vimrc.old\n"
    mv ~/.vimrc ~/.vimrc.old
fi
unset VIMRC

if [ ! -n "$ZSHRC" ]; then
    ZSHRC=~/.zshrc
fi
if [ -f $ZSHRC ]; then
    printf "Moving old .zshrc to .zshrc.old\n"
    mv ~/.zshrc ~/.zshrc.old
fi
unset ZSHRC

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

