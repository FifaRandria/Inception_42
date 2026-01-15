FROM debian:bookworm

RUN apt update -y && apt install -y \
     vim \
     wget \
     php-fpm \
     php-mysql \
     mariadb-client 

RUN mkdir -p /run/php

EXPOSE 9000

RUN wget https://wordpress.org/latest.tar.gz -P /var/www

RUN  cd /var/www && tar -xzvf latest.tar.gz && rm latest.tar.gz

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
     && chmod +x wp-cli.phar \
     && mv wp-cli.phar /usr/local/bin/wp

RUN sed -i 's#listen = /run/php/php8.2-fpm.sock#listen = 0.0.0.0:9000#' /etc/php/8.2/fpm/pool.d/www.conf

COPY ./tools/setup_wp_config.sh /usr/local/bin/

WORKDIR /run/secrets

RUN chmod +x /usr/local/bin/setup_wp_config.sh

WORKDIR /var/www/wordpress

CMD [ "/usr/sbin/php-fpm8.2", "-F" ]

ENTRYPOINT [ "sh", "/usr/local/bin/setup_wp_config.sh" ]