#!/usr/bin/bash

docker build -t nginx-proxy .
docker run -it -p 90:80 nginx-proxy

echo "listening on port 90"
