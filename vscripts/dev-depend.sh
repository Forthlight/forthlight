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

#passenger
sudo apt-get update -y
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y apache2-threaded-dev
sudo apt-get install -y libapr1-dev
sudo apt-get install -y libaprutil1-dev
sudo gem install passenger
rvmsudo passenger-install-apache2-module --auto --auto-download  
sudo sed -i '$a LoadModule passenger_module /usr/local/rvm/gems/ruby-1.9.3-p125@global/gems/passenger-4.0.25/buildout/apache2/mod_passenger.so' /etc/apache2/apache2.conf
sudo sed -i '$a         PassengerRoot /usr/local/rvm/gems/ruby-1.9.3-p125@global/gems/passenger-4.0.25' /etc/apache2/apache2.conf
sudo sed -i '$a         PassengerDefaultRuby /usr/local/rvm/wrappers/ruby-1.9.3-p125/ruby' /etc/apache2/apache2.conf