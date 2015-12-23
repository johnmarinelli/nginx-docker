#!/usr/bin/bash

docker build -t hello-nginx-load-balancer .
docker run -it -p 8080:8080 hello-nginx-load-balancer
