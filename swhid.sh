#!/usr/bin/env bash

docker pull ubuntu:latest #Pull Ubuntu image from docker
container=$(docker run -d ubuntu:latest) #Run ubuntu container
.........
# AFTER DOWNLOADING SOURCE CODE FOR A PACKAGE, LETS SAY, "bash version 5.0-6" IS BEING PROCESSED, hence, SRC_PATH = "bash_5.0-6ubuntu1" Assuming same directory
.
SRC_PATH = "fingerprints.txt" #Current package-version-name to calculate SWHID
.
SWHID = $(docker exec "$container" swh-identify --type auto --no-filename "$SRC_PATH" | tr -d '\r')

echo "$SWHID"