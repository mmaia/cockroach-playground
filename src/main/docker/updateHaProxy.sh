#!/usr/bin/env bash

docker-compose stop haproxy && docker rm haproxy

docker-compose build haproxy

docker-compose up -d haproxy


