#!/bin/bash

apt-add-repository ppa:ansible/ansible
apt-get -q update
apt-get -yq install ansible
