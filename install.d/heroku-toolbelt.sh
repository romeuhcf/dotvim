#!/bin/bash - 
set -e 
set -o nounset                              # Treat unset variables as an error
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh 
heroku login

