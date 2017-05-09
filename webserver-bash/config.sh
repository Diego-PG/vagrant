#!/bin/bash
# Actualizando la máquina
apt-get update
apt-get upgrade -y 
apt-get install debconf-utils -y
# Instalando Apache
apt-get install apache2 -y
mv /home/vagrant/index.html /var/www/html/index.html
service apache2 restart
