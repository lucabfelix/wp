FROM wordpress:php8.1-apache

# PHP settings for uploads and performance
RUN echo "upload_max_filesize = 128M\n\
post_max_size = 128M\n\
memory_limit = 256M\n\
max_execution_time = 300\n\
max_input_vars = 3000\n\
display_errors = Off\n\
error_reporting = E_ALL & ~E_DEPRECATED & ~E_NOTICE" > /usr/local/etc/php/conf.d/wordpress-custom.ini

EXPOSE 80
