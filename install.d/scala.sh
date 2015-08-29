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
install_scalaide

(
echo '# DONT CHANGE'
echo 'export PATH=/opt/scalaide:$PATH'
) > ~/.vim/profile.d/scala.sh


