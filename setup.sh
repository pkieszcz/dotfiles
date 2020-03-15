#!/bin/bash
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"


git -C ~/.vim/bundle/Vundle.vim  pull || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir -p $HOME/.config/nvim/
[ -L $HOME/.vimrc ] && [ -e $HOME/.vimrc ] || ln -s `pwd`/vim/vimrc $HOME/.config/nvim/init.vim


[ -L $HOME/.gitconfig ] && [ -e $HOME/.gitconfig ] || ln -s `pwd`/git/gitconfig $HOME/.gitconfig

[ -L $HOME/.slate ] && [ -L $HOME/.slate ] || ln -s `pwd`/slate/slate $HOME/.slate
