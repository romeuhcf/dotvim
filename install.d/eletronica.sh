#!/bin/bash - 
#===============================================================================
#
#          FILE: ktechlab.sh
# 
#         USAGE: ./ktechlab.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/04/2015 18:37
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -e
sudo add-apt-repository ppa:fransschreuder1/qucs
sudo apt-get update
sudo apt-get install qucs
