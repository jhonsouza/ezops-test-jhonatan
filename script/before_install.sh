#!/bin/bash

#install dependecies 
sudo yum install wget ruby git -y
sudo yum install nodejs -y
sudo npm install -g forever
rm -f .gitignore
curl -fLls https://get.docker.com | bash


