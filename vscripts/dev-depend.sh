#!/bin/bash
sudo apt-get install -y curl
\curl -L https://get.rvm.io | bash
source /etc/profile
rvm install 2.1.0-p0

sudo apt-get install -y git

sudo apt-get update
sudo apt-get install -y apache2

#mongo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update -y
sudo apt-get install -y mongodb-10gen

#postgresql
sudo apt-get install postgresql postgresql-contrib -y


#rails
sudo apt-get update -y
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y apache2-threaded-dev
sudo apt-get install -y libapr1-dev
sudo apt-get install -y libaprutil1-dev
gem install rails -v 4.0.3 --no-rdoc --no-ri

