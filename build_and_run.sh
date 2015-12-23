#!/usr/bin/bash

docker build -t hello-nginx-load-balancer .
docker run -it -p 90:80 hello-nginx-load-balancer
