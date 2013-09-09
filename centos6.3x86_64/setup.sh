#!/bin/bash

# Get epel-release repository to be able to install nodejs
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo rpm -Uvh epel-release-6-8.noarch.rpm

# Install necessary packages
sudo yum install -y git libxml2-devel rubygems ruby-devel npm rpm-build

# Install fpm to build packages
sudo gem install fpm

# Build ApiAxle packages
cd /vagrant
fpm -t rpm -s npm -n apiaxle-proxy -a all -d 'nodejs' apiaxle-proxy
fpm -t rpm -s npm -n apiaxle-api -a all apiaxle-api
fpm -t rpm -s npm -n apiaxle-repl -a all apiaxle-repl