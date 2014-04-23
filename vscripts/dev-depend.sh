#!/bin/bash
sudo apt-get install -y curl
sudo apt-get install git -y
\curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh


#following comments might get implemetentet on monday
#rvmsudo rvm get stable --auto-dotfiles
#rvm fix-permissions system
#rvm group add rvm vagrant
rvm install 2.1.0-p0
rvm --default use 2.1.0
gem install rails -v 4.0.3 --no-rdoc --no-ri


sudo apt-get update
sudo apt-get install -y apache2

#mongo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update -y
sudo apt-get install -y mongodb-10gen

#postgresql
sudo apt-get install postgresql postgresql-contrib -y
sudo -u postgres psql
CREATE USER lightbringer WITH PASSWORD 'global_dev';
CREATE DATABASE forthlight_dev;
GRANT ALL PRIVILEGES ON DATABASE forthlight_dev to lightbringer;
\q

#rails
sudo apt-get update -y
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y apache2-threaded-dev
sudo apt-get install -y libapr1-dev
sudo apt-get install -y libaprutil1-dev

#elastic search
sudo apt-get install -y python-software-properties --fix-missing
sudo add-apt-repository ppa:webupd8team/java 
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | \
  sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  sudo debconf-set-selections
sudo apt-get install -y oracle-java7-installer 

wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.deb
dpkg -i elasticsearch-1.1.1.deb
rm elasticsearch-1.1.1.deb
sudo service elasticsearch start