#!/bin/bash -
set -e


function install_scalaide(){
test -x /opt/scalaide/scalaide && return
cd /tmp
wget -c http://downloads.typesafe.com/scalaide-pack/4.1.1-vfinal-luna-211-20150728/scala-SDK-4.1.1-vfinal-2.11-linux.gtk.x86_64.tar.gz
tar -xzvf scala-SDK-4.1.1-vfinal-2.11-linux.gtk.x86_64.tar.gz
sudo mv eclipse /opt/scalaide
sudo mv  /opt/scalaide/eclipse /opt/scalaide/scalaide
}

function install_sbt(){
which sbt && return
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt
}


install_scalaide
install_sbt

(
echo '# DONT CHANGE'
echo 'export PATH=/opt/scalaide:$PATH'
) > ~/.vim/profile.d/scala.sh


