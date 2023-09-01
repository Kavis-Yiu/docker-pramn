// image information --------------------------------------------------
php:8.2.9-apache-bookworm  = debian:12.1-slim + apache2.4.57 + php8.2.9
node:18.17.1-bookworm-slim = debian:12.1-slim + node:18.17.1
mariadb:11.1.2-jammy       = ubuntu:22.04     + mariadb:11.1.2
redis:7.2.0-bookworm       = debian:12.1-slim + redis:7.2.0

// Port number -------
// PHP web app  : 8880
// Node web app : 8888
// Mariadb db   : 3307
// Redis cache  : 6379

// to start up -----
docker-compose up -d
