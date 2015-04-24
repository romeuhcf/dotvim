#!/bin/bash - 
set -e 
set -o nounset                              # Treat unset variables as an error
sudo dpkg --add-architecture i386
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update && sudo apt-get install skype


