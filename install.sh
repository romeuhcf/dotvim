#!/bin/bash

function install_pathogen(){
  if [ ! -f ~/.vim/autoload/pathogen.vim ]; then
    mkdir -p ~/.vim/autoload ~/.vim/bundle
    curl -LSo ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  fi
}

function install_molokai(){
if [ ! -f ~/.vim/colors/molokai.vim ]; then
mkdir -p  ~/.vim/colors
  curl -LSo ~/.vim/colors/molokai.vim https://raw.github.com/tomasr/molokai/master/colors/molokai.vim
fi

}

install_pathogen
install_molokai
