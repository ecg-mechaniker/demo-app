#!/bin/bash -eux

docker build -t docker-registry.dawanda.in/tomas:hello_http .
docker push docker-registry.dawanda.in/tomas:hello_http
