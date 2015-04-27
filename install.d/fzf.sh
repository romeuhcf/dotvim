#!/bin/bash - 
#===============================================================================
#
#          FILE: fzf.sh
# 
#         USAGE: ./fzf.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 24-04-2015 02:53
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -e 
test -d ~/.fzf || git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

