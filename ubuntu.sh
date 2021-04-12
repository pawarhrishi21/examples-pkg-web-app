#!/usr/bin/env bash

docker pull ubuntu:latest
container=$(docker run -d ubuntu)
docker exec "$container" apt update
docker exec "$container" apt-cache search . > packages.txt
docker kill "$container"
docker rm "$container"