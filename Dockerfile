FROM centos

RUN yum install nodejs -y && yum update -y
RUN mkdir -p /var/node/ezops

WORKDIR /var/node/ezops

ADD  src /var/node/ezops
ADD package.json /var/node/ezops

RUN npm install
RUN npm install -g forever
RUN npm audit fix 

USER root

LABEL description="simple app chat"
LABEL version="1.1"
