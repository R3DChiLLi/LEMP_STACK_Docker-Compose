# Use the official PHP-FPM image
FROM php:8.1-fpm

# Install dependencies and enable the mysqli extension
RUN apt-get update && apt-get install -y \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli

# Expose the PHP-FPM port
EXPOSE 9000

