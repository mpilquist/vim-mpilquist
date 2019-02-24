#!/bin/sh

set -e

mkdir -p ~/.vim/{bundle,backup}

if [[ -n "$RW" ]]; then
  PREFIX="git@github.com:"
else
  PREFIX="https://github.com/"
fi

if ! [[ -d ~/.vim/bundle/vundle ]]; then
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

if ! [[ -d ~/.vim/bundle/vim-jsheppard ]]; then
  git clone ${PREFIX}jshep3000/vim-jsheppard.git ~/.vim/bundle/vim-jsheppard
fi

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak

ln -s ~/.vim/bundle/vim-jsheppard/vimrc ~/.vimrc

vi +BundleInstall +qall
