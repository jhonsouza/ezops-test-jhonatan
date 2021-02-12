#!/bin/bash


sudo chmod 666 /var/run/docker.sock
sudo mkdir /home/ubuntu/ezops-test-jhonatan/logs

sudo chown ubuntu:ubuntu -R /home/ec2-user/ezops-test-jhonatan
cd /home/ubuntu/ezops-test-jhonatan
docker image build -f Dockerfile -t ezops/simplechat 
