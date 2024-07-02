#!/bin/bash 

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install apache2 -y

sudo git clone https://github.com/AlanaSilva/Clone-Netflix.git
cd Clone-Netflix
sudo cp -R * /var/www/html

