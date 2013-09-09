#!/bin/bash

# Install necessary packages
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update -y
sudo apt-get install -y git python-software-properties build-essential libxml2-dev nodejs npm ruby-dev

# Install fpm to build packages
sudo gem install --no-rdoc --no-ri fpm

# Build ApiAxle packages
cd /vagrant
fpm -t deb -s npm -n apiaxle-proxy -a all -d 'nodejs' apiaxle-proxy
fpm -t deb -s npm -n apiaxle-api -a all -d 'nodejs' apiaxle-api
fpm -t deb -s npm -n apiaxle-repl -a all -d 'nodejs' apiaxle-repl