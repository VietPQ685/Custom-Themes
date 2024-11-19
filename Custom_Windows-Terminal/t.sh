#!/usr/bin/bash

echo 'Setting locale'

locale -a | grep -q "en_US.UTF-8"
if [ $? -ne 0 ]; then
    echo 'en_US.UTF-8' >> /etc/locale.gen
    sudo locale-gen
if

echo "LANG=en_US.UTF-8" | sudo tee /etc/locale.conf
echo "LC_ALL=en_US.UTF-8" | sudo tee -a /etc/locale.conf

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8