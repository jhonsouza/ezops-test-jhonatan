#!/bin/bash

cd /home/ec2-user/ezops-test-jhonatan/
docker-compose up -d > init.log 2>&1
forever start src/server.js > logs/start_app.log