# Use Debian as the base image
FROM debian:bullseye

# Install MariaDB
RUN apt-get update 
RUN apt-get install -y mariadb-server mariadb-client \
    && rm -rf /var/lib/apt/lists/*


COPY ./tools/mariadb.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/mariadb.sh
# Expose the default MariaDB port
EXPOSE 3306

ENTRYPOINT [ "/usr/local/bin/mariadb.sh" ]
# Start MariaDB when the container starts
# CMD ["mysqld_safe"]