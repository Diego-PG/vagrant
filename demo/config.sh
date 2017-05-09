#!/bin/bash
apt-get update
apt-get install vim -y
useradd -m -s /bin/bash diego
echo diego:secreto | chpasswd
cp /home/vagrant/files/vimrc /home/diego/.vimrc
