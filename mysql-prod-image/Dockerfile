# Download base image ubuntu 16.04
FROM mysql/mysql-server:8.0

MAINTAINER Vincent Bochet (vbochet@excilys.com)

ENV MYSQL_ALLOW_EMPTY_PASSWORD true

COPY sql_db_setup/ /docker-entrypoint-initdb.d
