#!/usr/bin/bash

docker build -t hello-nginx-load-balancer .
docker run -it -p 90:8080 hello-nginx-load-balancer

echo "listening on port 90"
