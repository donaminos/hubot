#!/bin/bash

apt-get -y update


dpkg -s npm &>/dev/null || {

	apt-get -y install nodejs npm
	ln -s /usr/bin/nodejs /usr/bin/node
}

command -v hubot &>/dev/null || {

 npm install -g yo generator-hubot coffee-script

}

dpkg -s libicu-dev &>/dev/null || {
	apt-get install libexpat1-dev	
}
