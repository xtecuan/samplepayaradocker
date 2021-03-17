#!/bin/bash

docker run --restart unless-stopped -d -p 8181:8181  -p 4848:4848  -p 8080:8080 -v ~/payara/apps:/opt/payara/deployments --name mypayara  payara/server-full 
