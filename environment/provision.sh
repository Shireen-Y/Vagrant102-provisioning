#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y

sudo systemctl start nginx

#sudo apt-get install nodejs -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install -y nodejs

sudo npm install pm2 -g


# Move to the right file
cd /app
npm install # installs dependencies from .json file
npm start # load/run .js file
