#!/bin/bash -
#===============================================================================
#
#          FILE: hortonworks-sandbox.sh
#
#         USAGE: ./hortonworks-sandbox.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (),
#  ORGANIZATION:
#       CREATED: 08-09-2015 19:07
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
URL=http://d1ozir9xe74yyw.cloudfront.net/2.3/Sandbox_HDP_2.3_1_virtualbox.ova

sudo apt-get install virtualbox -y
sudo apt-get install aria2 -y # Downloader
aria2c -c -s 10 -d ~/ -x 10 $URL
cd ~
virtualbox
