#!/bin/bash - 
#===============================================================================
#
#          FILE: remove_evolution.sh
# 
#         USAGE: ./remove_evolution.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 14-07-2015 09:32
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
sudo apt-get -y --purge remove evolution evolution-exchange evolution-plugins evolution-common evolution-webcal
sudo rm /usr/share/indicators/messages/applications/evolution
sudo apt-get install gnome-panel -y
sudo mv /usr/lib/evolution /usr/lib/evolution-fu


