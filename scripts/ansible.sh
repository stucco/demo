#!/bin/bash

apt-add-repository -y ppa:ansible/ansible
apt-get -q update
apt-get -yq install ansible
