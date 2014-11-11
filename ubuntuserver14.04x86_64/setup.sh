#!/bin/bash

# Install necessary packages
sudo apt-get install -y git python-software-properties build-essential libxml2-dev
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update -y
sudo apt-get install -y nodejs ruby-dev gcc

# Install fpm to build packages
sudo gem install --no-rdoc --no-ri fpm -v 1.2.0

# Build ApiAxle packages
cd /vagrant
fpm -t deb -s npm -n apiaxle-proxy -a all -d 'nodejs' apiaxle-proxy
fpm -t deb -s npm -n apiaxle-api -a all -d 'nodejs' apiaxle-api
fpm -t deb -s npm -n apiaxle-repl -a all -d 'nodejs' apiaxle-repl