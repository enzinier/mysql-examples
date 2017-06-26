#!/bin/bash

OUTPUT=""
until [[ ! "$OUTPUT" == "" ]]; do
    echo "Not Connect!"
    OUTPUT=$(mysql -h127.0.0.1 -uroot -p$MYSQL_ROOT_PASSWORD -e "SHOW DATABASES;" 2>/dev/null)
    sleep 1
done

echo "Connect!"
FILES="/tmp/initialize_sql/*.sql"

for file in $FILES;
do
    mysql -h127.0.0.1 -uroot -p$MYSQL_ROOT_PASSWORD < $file
done