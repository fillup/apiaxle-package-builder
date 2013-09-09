# ApiAxle - Package Builder #
[ApiAxle](http://apiaxle.com) is an open source API proxy/management solution. It is developed in 
NodeJS and distributed via NPM. NPM is not always available in a production environment though, 
and some people prefer to install software via native packages. The goal of this project is to 
provide a semi-automaited script for building native packages for ApiAxle.

## Requirements ##
1. [VirtualBox](http://virtualbox.org)
2. [Vagrant](http://vagrantup.com)
3. [Git](http://git-scm.com)

These scripts use [VirtualBox](http://virtualbox.org) and [Vagrant](http://vagrantup.com) to start up a 
guest virtual machine for the target operating system, configure that operating system to be able to 
run [fpm](https://github.com/jordansissel/fpm) and then build RPMs or DEBs for ApiAxle Proxy, API, and REPL.

## Setup / Build Instructions ##
1. Clone the repo: ```git clone http://....```
2. Change directory for the target OS you need and initialize vagrant:
        ```
        $cd centos6.4
        $./init.sh
        ```
3. Run vagrant: ```vagrant up```
4. Depending on your download speed this can take a while, but when it completes you should have three new package files in this project folder:
        ```
        $ls -al apiaxle-*
        apiaxle-api...
        ```

## Adding more target operating systems ##
For each target operating system the scripts may need to be tweaked to get fpm installed and running properly. 
Please fork this project to add support for your favorite operating system or submit a request and I'll get 
it setup as soon as I can.

## Base Boxes ##
I get all my base boxes from http://www.vagrantbox.es/, so if you see one there you'd like support for, let me know
and I'll try to get it scripted too.

## Currently Supported OSs ##
| OS            | Arch          | Box URL  |
| ------------- |:-------------:| -------- |
| CentOS 6.4    | x86_64        | http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210-nocm.box |
| CentOS 6.3    | x86_64        | https://dl.dropbox.com/u/7225008/Vagrant/CentOS-6.3-x86_64-minimal.box |
