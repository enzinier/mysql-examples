FROM mysql:5.7
ARG config_name=base

COPY config/${config_name}.cnf /etc/mysql/conf.d/
COPY initialize_sql /tmp/initialize_sql

COPY initialize_db.sh /tmp/

RUN sed -i '2ibash /tmp/initialize_db.sh &> /tmp/initialize.log &' /usr/local/bin/docker-entrypoint.sh

VOLUME /tmp/initialize_sql

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]