#!/bin/sh

set -e

mkdir -p ~/.vim/{bundle,backup}

if ! [[ -d ~/.vim/bundle/vundle ]]; then
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

if ! [[ -d ~/.vim/bundle/vim-mpilquist ]]; then
  git clone http://github.com/mpilquist/vim-mpilquist.git ~/.vim/bundle/vim-mpilquist
fi

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak

ln -s ~/.vim/bundle/vim-mpilquist/vimrc ~/.vimrc
