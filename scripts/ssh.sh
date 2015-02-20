#!/bin/bash

mkdir -p /home/vagrant/.ssh
chown vagrant:vagrant /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh

apt-get -yq install curl
curl -Lso /home/vagrant/.ssh/authorized_keys https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub
