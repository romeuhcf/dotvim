#!/bin/bash

echo "instalando o VPN..."
sudo apt-get install sgt-puzzles libwww-perl -y
sudo perl -MCPAN -e "install Bundle::LWP"
sudo cpan Term::ReadKey

if [ ! -d ~/Programas/ ]; then
  mkdir ~/Programas/
fi

git clone "git@github.com:samm-git/jvpn.git" ~/Programas/jvpn 


