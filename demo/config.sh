#!/bin/bash
cp -r /home/vagrant/files/skel/* /etc/skel
useradd -m -s /bin/bash -G admin diego
echo diego:secreto | chpasswd
cp /home/vagrant/files/motd  /etc/motd.tail
chmod -x /etc/update-motd.d/00-header /etc/update-motd.d/10-help-text /etc/update-motd.d/91-release-upgrade
chown -R diego:diego /opt/compartida
ln -s /opt/compartida/ /home/diego/
tar -xvf /home/diego/compartida/archivo.tar -C /home/diego
