#!/bin/bash - 
#===============================================================================
#
#          FILE: data_science.sh
# 
#         USAGE: ./data_science.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/05/2015 18:26
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -e 
sudo apt-get install r-base
sudo apt-get install r-cran-testthat
cd /tmp 
wget -c -nc http://download1.rstudio.org/rstudio-0.98.1103-amd64.deb
sudo dpkg -i rstudio-0.98.1103-amd64.deb 


