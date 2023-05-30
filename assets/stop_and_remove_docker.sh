#!/usr/bin/env bash

docker container stop $(docker container ls -aq)
docker system prune -f -a

docker system prune -f -a --volumes
