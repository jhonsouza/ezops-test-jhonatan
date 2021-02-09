#!/bin/bash

cd /home/ec2-user/ezops-test-jhonatan/
forever start ./server.js > logs/start_app.log