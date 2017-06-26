# MySQL Example Docker

This repository is docker image for MySQL sample database(sakila, world).

All of commands same with official mysql docker.


## Build

`docker build -t mysql-example .`


## Run

`docker run --rm -p 3306:3306 -e MYSQL_ROOT_PASSWORD=local --name mysql-local mysql-example`