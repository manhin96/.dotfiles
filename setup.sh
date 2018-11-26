#!/bin/bash

pwd=`pwd`
#setup symbolic links for .vim, .vimrc, .tmux.conf
ln -s $pwd/tmux.conf ~/.tmux.conf
ln -s $pwd/vim ~/.vim
ln -s $pwd/vimrc ~/.vimrc
