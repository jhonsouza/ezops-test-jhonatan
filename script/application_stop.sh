#!bin/bash

cd /home/ec2-user/ezops-test-jhonatan/
docker-compose down >> stop.log 2>&1
#forever stop src/server.js > logs/stop_app.log