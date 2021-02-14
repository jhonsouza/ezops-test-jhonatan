#!bin/bash

cd /home/ec2-user/ezops-test-jhonatan/
docker container stop simplechat
docker container rm simplechat
forever stop src/server.js > logs/stop_app.log