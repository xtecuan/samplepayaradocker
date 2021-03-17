#!/bin/bash

export IMAGE=mydb-image
export CONTAINER=mydb-container
export DOCKER_SHARES=~/mydb-data
export MYDB_PGDATA=$DOCKER_SHARES/data/pgdata
export MYDB_PORT=5432
export MYDB_PASS="Welcome123\$"
export MYDB_CONTAINER=$CONTAINER
export MYDB_IMAGE=$IMAGE

docker run --restart unless-stopped  -d \
    --name $MYDB_CONTAINER \
    -e POSTGRES_PASSWORD=$MYDB_PASS \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v $MYDB_PGDATA:/var/lib/postgresql/data/pgdata \
    -p $MYDB_PORT:5432 \
    $MYDB_IMAGE
