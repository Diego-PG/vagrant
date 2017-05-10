#!/bin/bash
apt-get update
apt-get install vim -y
cp -r /home/vagrant/files/skel/* /etc/skel
useradd -m -s /bin/bash -G admin diego
echo diego:secreto | chpasswd
cp /home/vagrant/files/vimrc /home/diego/.vimrc
cp /home/vagrant/files/motd  /etc/motd.tail
