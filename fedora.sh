#!/usr/bin/env bash

docker pull fedora:latest
container=$(docker run -d fedora:latest)
docker exec "$container" dnf list all > packages.txt
docker kill "$container"
docker rm "$container"