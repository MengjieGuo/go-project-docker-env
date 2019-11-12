#!/bin/bash

MYSQL_USER=username
MYSQL_PASSWORD=password
MYSQL_HOST=mysql
MYSQL_PORT=3306

./bin/cli.linux --mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@(${MYSQL_HOST}:${MYSQL_PORT})/payment?charset=utf8&parseTime=True&loc=Local" db-migrate
./bin/cli.linux --mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@(${MYSQL_HOST}:${MYSQL_PORT})/payment?charset=utf8&parseTime=True&loc=Local" init-data
