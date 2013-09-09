#!/bin/bash

# Install necessary packages
sudo yum install -y git libxml2-devel rubygems ruby-devel npm rpm-build

# Install fpm to build packages
sudo gem install --no-rdoc --no-ri fpm

# Build ApiAxle packages
cd /vagrant
fpm -t rpm -s npm -n apiaxle-proxy -a all -d 'nodejs' apiaxle-proxy
fpm -t rpm -s npm -n apiaxle-api -a all -d 'nodejs' apiaxle-api
fpm -t rpm -s npm -n apiaxle-repl -a all -d 'nodejs' apiaxle-repl