#!/bin/sh
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y upgrade
sudo swapon --show
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
