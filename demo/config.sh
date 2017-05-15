#!/bin/bash
cp -r /home/vagrant/files/skel/* /etc/skel
useradd -m -s /bin/bash -G admin diego
echo diego:secreto | chpasswd
cp /home/vagrant/files/motd  /etc/motd.tail
chown -R diego:diego /opt/compartida
ln -s /opt/compartida/ /home/diego/
