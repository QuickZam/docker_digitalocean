#!/bin/bash
echo "Started"
git pull 
docker-compose up --build 
echo "Finished Building the docker!"
