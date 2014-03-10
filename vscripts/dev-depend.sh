#!/bin/bash

#apache
apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

#git
sudo apt-get install -y git
sudo apt-get install -y git-flow

#mongo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update -y
sudo apt-get install -y mongodb-10gen

#ruby&rvm
apt-get install -y curl
\curl -L https://get.rvm.io | bash
source /etc/profile
#comment to install a specific rubyversion a launch, 1.9.3-p125 is an example
rvm install ruby -v 2.1.0
gem install rails -v 4.0.2
