#!/bin/bash

cd /home/ec2-user/ezops-test-jhonatan/
docker container run -ti --name=simplechat ezops/simplechat
forever start src/server.js > logs/start_app.log