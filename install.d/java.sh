#!/bin/bash -
set -e

function install_java8(){
grep -q '^[^#].*webupd8team/java/ubuntu' /etc/apt/sources.list /etc/apt/sources.list.d/*list && return
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y
}
function install_play_framework(){
test -x /opt/play/activator && return
cd /tmp
#wget -c https://downloads.typesafe.com/typesafe-activator/1.3.5/typesafe-activator-1.3.5-minimal.zip
wget -c https://downloads.typesafe.com/typesafe-activator/1.3.5/typesafe-activator-1.3.5.zip
unzip typesafe-activator-1.3.5.zip
sudo mv activator-dist-1.3.5 /opt/play
rm /opt/play/*.bat -v
}

function install_intellij(){
test -x /opt/intellij/bin/idea.sh && return
cd /tmp
wget -c https://d1opms6zj7jotq.cloudfront.net/idea/ideaIC-14.1.4.tar.gz
tar -xzvf ideaIC-14.1.4.tar.gz
sudo mv /tmp/idea-IC-141.1532.4/ /opt/intellij
}
install_play_framework
install_java8
install_intellij

(
echo '# DONT CHANGE'
echo 'export PATH=/opt/play:$PATH'
echo 'export PATH=/opt/intellij/bin:$PATH'
) > ~/.vim/profile.d/java.sh
java -version

