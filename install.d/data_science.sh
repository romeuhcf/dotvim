#!/bin/bash - 
set -e 

function install_r_packages(){
echo '
cat(".Rprofile: Setting UK repositoryn")
r = getOption("repos") # hard code the UK repo for CRAN
r["CRAN"] = "http://cran.uk.r-project.org"
options(repos = r)
rm(r)
' > ~/.Rprofile



echo "
list.of.packages <- c('lubridate', 'plyr', 'reshape2', 'ggplot2', 'sqldf', 'forecast', 'stringr', 'RPostgreSQL', 'RMySQL', 'RMongo', 'RSQLite', 'XML', 'zoo', 'dplyr', 'maps', 'bit64', 'RColorBrewer', 'choroplethr', 'data.table', 'rjson', 'rpart', 'scales', 'hexbin', 'ROCR', 'grDevices', 'class', 'e1071', 'grid', 'fpc', 'arules', 'mgcv', 'kernlab', 'knitr', 'Rook', 'RCurl', 'gdata', 'digest', 'colorspace', 'car', 'labeling', 'proto', 'dichromat', 'mvtnorm', 'Hmisc', 'lattice', 'rgl', 'gtools', 'sp', 'Matrix', 'lmtest', 'survival', 'multcomp', 'xts', 'quadprog','tseries', 'sandwich', 'maptools', 'igraph')
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,'Package'])]
if(length(new.packages)) install.packages(new.packages)
" | R --no-save
}
function install_python(){
sudo apt-get install -y build-essential python-dev python-setuptools python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
}


function install_python_packages(){
for i in networkx ggplot virtualenv flask python-louvain twython pymongo folium line_profiler
do 
  sudo pip install $i
done
}


function install_r(){
test -x $( which rstudio ) && return
sudo add-apt-repository ppa:marutter/rrutter -y
sudo apt-get update
sudo apt-get install -y r-base-core r-base-dev r-base \
  r-cran-plyr r-cran-xml r-cran-reshape r-cran-reshape2 r-cran-rmysql \
  openjdk-7-jdk r-cran-rjava \
  curl 

update-alternatives --config java
sudo R CMD javareconf

cd /tmp 
wget -c -nc http://download1.rstudio.org/rstudio-0.98.1103-amd64.deb && sudo dpkg -i rstudio-0.98.1103-amd64.deb 
}


install_python
install_python_packages
install_r
install_r_packages

echo "SUCESSO"
