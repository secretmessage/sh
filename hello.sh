#!/bin/bash 
sudo apt-get update 
sudo apt-get upgrade -yqq 
sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list' 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893 
sudo apt-get update 
sudo apt-get install dotnet-dev-1.0.1 -yqq 
sudo apt-get update 
sudo apt-get install git 
apt-get update;
apt-get -y upgrade;
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -;
sudo apt-get install -y nodejs;
sudo apt-get install -y build-essential;
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -;
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list;
sudo apt-get update && sudo apt-get install yarn;
git clone https://github.com/angular/angular-cli.git;
cd angular-cli;
npm link;
ng set --global packageManager=yarn;
node --version;
npm --version;
yarn --version;
ng --version;
