#!/bin/bash
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

