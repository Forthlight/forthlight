#!/usr/bin/env bash
#rvm
apt-get install -y curl
\curl -L https://get.rvm.io | bash
source /etc/profile
#comment to install a specific rubyversion a launch, 1.9.3-p125 is an example
rvm install ruby -v 2.1.0
gem install rails -v 4.0.2
