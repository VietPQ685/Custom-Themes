#!/usr/bin/bash

echo 'Setting locale'
echo 'en_US.UTF-8' >> /etc/locale.gen
sudo locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
export LANG=en_US.UTF-8
