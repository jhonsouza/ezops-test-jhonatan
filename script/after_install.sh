#!/bin/bash


sudo mkdir /home/ec2-user/ezops-test-jhonatan/logs

sudo chown ec2-user:ec2-user -R /home/ec2-user/ezops-test-jhonatan
cd /home/ec2-user/ezops-test-jhonatan
docker image build -f Dockerfile -t ezops/simplechat
