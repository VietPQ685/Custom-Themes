#!/usr/bin/bash

echo 'Setting locale'
echo "en_US.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
sudo locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
export LANG=en_US.UTF-8
