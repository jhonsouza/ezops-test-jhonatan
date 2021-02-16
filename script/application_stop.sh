#!bin/bash

cd /home/ec2-user/ezops-test-jhonatan/
docker container rm ezops-test-jhonatan_node_1 -f
#forever stop src/server.js > logs/stop_app.log