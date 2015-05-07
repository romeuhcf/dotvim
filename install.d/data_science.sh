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
sudo add-apt-repository ppa:marutter/rrutter
sudo apt-get update
sudo apt-get install curl
sudo apt-get install r-base-core r-base-dev

sudo apt-get install r-cran-plyr r-cran-xml r-cran-reshape r-cran-reshape2 r-cran-rmysql
sudo apt-get install openjdk-7-*
sudo apt-get install r-cran-rjava

update-alternatives --config java
sudo R CMD javareconf

cd /tmp 
wget -c -nc http://download1.rstudio.org/rstudio-0.98.1103-amd64.deb
sudo dpkg -i rstudio-0.98.1103-amd64.deb 
sudo R CMD javareconf


