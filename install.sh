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


function install_pathogen_module_from_github(){
repo=$1
author=$(dirname $repo)
module=$(basename $repo)
if [ ! -d  ~/.vim/bundle/$module ];then
git clone  https://github.com/$author/$module ~/.vim/bundle/$module
fi
}

install_pathogen
install_molokai
for repo in bling/vim-airline vim-scripts/ctrlp.vim majutsushi/tagbar tpope/vim-fugitive scrooloose/nerdtree
do
  install_pathogen_module_from_github $repo
done
