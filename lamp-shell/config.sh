#!/bin/bash
# Actualizando la máquina
apt-get update
apt-get upgrade -y 
apt-get install debconf-utils -y
# Instalando Apache
apt-get install apache2 -y
# Instalando PHP
apt-get install php5 libapache2-mod-php5 php5-cli php5-mysql -y
# Instalando MySQL
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password root" 
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
apt-get install mysql-client mysql-server -y
service apache2 restart
