#!/bin/sh
export DEBIAN_FRONTEND=noninteractive
sudo swapon --show
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo apt-get update
sudo apt-get upgrade -yqq 
sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list' 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893 
sudo apt-get install git -yqq
apt-get update
apt-get -y upgrade
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential python-minimal
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
sudo npm install -g @angular/cli --unsafe-perm
ng set --global packageManager=yarn
node --version
npm --version
yarn --version
ng --version
sudo apt-get install python3 python3-venv python3-dev python3-pip libpq-dev build-essential -yqq
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip 
