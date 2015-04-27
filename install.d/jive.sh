#!/bin/bash - 
#===============================================================================
#
#          FILE: jive.sh
# 
#         USAGE: ./jive.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/27/2015 09:15
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
sudo apt-get install openjdk-7-jre icedtea-7-plugin
sudo apt-get install openjdk-7-jre:i386
sudo ln -sf /usr/bin/update-alternatives /usr/sbin/


