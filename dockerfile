FROM httpd:2.4.57-alpine3.18

LABEL description="alpine3.18.2 + apache2.4.57 + php8.2"

# Install PHP from packages with out caching install files
RUN apk update && apk upgrade && apk add --update --no-cache \
	php82-apache2 \
	php82-common \
	php82-ctype \
	php82-curl \
	php82-dom \
	php82-gd \
	php82-iconv \
	php82-mbstring \
	php82-openssl \
	php82-mysqlnd \
	php82-mysqli \
	php82-phar \
	php82-session \
	php82-xml

# using customised configurations
#COPY ./httpd.conf /etc/apache2/httpd.conf
#COPY ./php.ini /etc/php82/php.ini

# volumne mount
VOLUME /var/www/localhost/htdocs
VOLUME /var/log/apache2

# Open port for httpd access
EXPOSE 80

# Srart httpd when container runs
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
