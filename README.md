# MySQL Sample Docker

This repository is docker image for MySQL sample database(sakila, world).

All of options same with official mysql docker.

If you want to initialize additional database, you can add sql file to initialize_sql directory.

You can mount initialized_sql directory with option like '-v $(pwd)/my_sql:/tmp/initialized_sql'.

## Build

`docker build -t mysql-sample .`


## Run

`docker run --rm -p 3306:3306 -e MYSQL_ROOT_PASSWORD=local --name mysql-local mysql-sample`
