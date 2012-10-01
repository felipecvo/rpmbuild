#!/bin/bash

yum install -y http://epel.gtdinternet.com/6/i386/epel-release-6-7.noarch.rpm
yum install -y rpm-build

echo '%_topdir /vagrant' > /home/vagrant/.rpmmacros
echo '%dist .el6' >> /home/vagrant/.rpmmacros
chown vagrant:vagrant /home/vagrant/.rpmmacros
