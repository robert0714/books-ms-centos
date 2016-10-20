#!/usr/bin/env bash

docker pull 192.168.57.29:5000/books-ms-centos-tests

cd /vagrant

docker-compose -f docker-compose-dev.yml run testsLocal
