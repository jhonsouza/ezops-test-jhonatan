#!/bin/bash

#install dependecies 
sudo yum install wget ruby git -y
sudo dnf install nodejs 
sudo npm install -g forever

#CodeDeploy agent
wget https://aws-codedeploy-us-east-2.s3.us-east-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo systemctl start codedeploy-agent 

