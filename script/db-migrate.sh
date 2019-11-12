#!/bin/bash

MYSQL_USER=username
MYSQL_PASSWORD=password
MYSQL_HOST=mysql
MYSQL_PORT=3306

mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -h ${MYSQL_HOST} -P ${MYSQL_PORT} payment < sql/0001_init.up.sql && \
mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -h ${MYSQL_HOST} -P ${MYSQL_PORT} payment < sql/0002_xxx.up.sql && \
mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -h ${MYSQL_HOST} -P ${MYSQL_PORT} payment < sql/0003_xxx.up.sql
