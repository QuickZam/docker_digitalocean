#!/bin/bash
echo "Started"
git pull 
docker-compose up -d --build 
echo "Finished Building the docker!"
