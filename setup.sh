#!/bin/bash

git -C ~/.vim/bundle/Vundle.vim  pull || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

[ -L $HOME/.vimrc ] && [ -e $HOME/.vimrc ] || ln -s `pwd`/vim/vimrc $HOME/.vimrc
[ -L $HOME/.gitconfig ] && [ -e $HOME/.gitconfig ] || ln -s `pwd`/git/gitconfig $HOME/.gitconfig
