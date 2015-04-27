#!/bin/bash - 
#===============================================================================
#
#          FILE: chrome.sh
# 
#         USAGE: ./chrome.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 24-04-2015 03:03
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -e 
cd /tmp
wget -c -nc https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
