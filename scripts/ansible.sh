#!/bin/bash

python --version
apt-get -yq install python-dev python-setuptools libssl-dev libffi-dev libxml2-dev libxslt1-dev zlib1g-dev python-pip
python --version
pip install -I ansible==2.0.2.0