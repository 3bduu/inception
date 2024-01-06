FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y php php-fpm php-mbstring php-bcmath php-xml php-mysql php-common php-gd php-cli php-curl php-zip php-imagick php-ldap php-intl curl && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/php

COPY tools/script.sh script.sh
RUN chmod +x script.sh

EXPOSE 7000

CMD [ "./script.sh" ]