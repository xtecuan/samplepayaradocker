#!/bin/bash

export IMAGE=mydb-image

docker build --force-rm=true --no-cache=true  -t=$IMAGE .
