FROM mysql:5.7

COPY config/** /etc/mysql/conf.d/
COPY initialize_sql /tmp/initialize_sql

COPY initialize_db.sh /tmp/

RUN sed -i '2ibash /tmp/initialize_db.sh &> /tmp/initialize.log &' /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]