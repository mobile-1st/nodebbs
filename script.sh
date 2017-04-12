#!/usr/bin/env bash

#docker run --name zm-mongodb -d -p 27017:27017 -p 28017:28017 -e AUTH=no tutum/mongodb
#docker run --name zm-redis -d redis
#
#
#docker build -t nodexxx .
#docker run -e VIRTUAL_HOST=bbs.sunzhongmou.com --name zm-node -p 8510:8510 -di ihakula/node-bbs


docker build -t ihakula/node-bbs -f ./Dockerfile .
docker tag ihakula/node-bbs ihakula/node-bbs:latest

docker login --username ihakula --password wayde191
docker push ihakula/node-bbs:latest