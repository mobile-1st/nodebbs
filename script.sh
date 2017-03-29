#!/usr/bin/env bash

docker run --name zm-mongodb -d -p 27017:27017 -p 28017:28017 -e AUTH=no tutum/mongodb
docker run --name zm-redis -d redis