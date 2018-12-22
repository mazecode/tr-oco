FROM mariadb:10.1

# COPY .docker/mysql/db.sql /tmp/dump.sql
ADD .docker/mysql/db.sql /docker-entrypoint-initdb.d/init.sql

# Environment variables
ENV MYSQL_ROOT_PASSWORD=toor

#ENV MYSQL_DATABASE=sampledb
ENV MYSQL_DATABASE=ocodesing_home
ENV MYSQL_USER=homestead
ENV MYSQL_PASSWORD=secret

ENV MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql


# RUN /etc/init.d/mysql start && \
#     # mysql -u root -p$MYSQL_ROOT_PASSWORD  -e "GRANT ALL PRIVILEGES ON *.* TO 'comeon'@'%' IDENTIFIED BY 'password';FLUSH PRIVILEGES;" && \
#     mysql -u root -p${MYSQL_ROOT_PASSWORD} < /tmp/dump.sql 