#!/bin/bash

docker run --name postgres \
    -e POSTGRES_USER=user -e POSTGRES_PASSWORD=password \
    --rm -p 5432:5432 -it \
    --cpus 0.5 --memory 128m \
    --mount type=volume,source=localdb,destination=/var/lib/postgresql/data \
    postgres:latest
