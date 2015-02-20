#!/bin/bash

# Update apt cache
apt-get -y update > /dev/null

# Install common build packages
apt-get -yq install software-properties-common build-essential

# Customize login message
echo 'Welcome to your Stucco virtual machine.' > /etc/motd
