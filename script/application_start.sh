#!/bin/bash

cd /home/ec2-user/ezops-test-jhonatan/
docker-compose up -d
forever start src/server.js > logs/start_app.log