FROM ghcr.io/jobscale/php-fpm
COPY . .
RUN composer install
RUN ./artisan key:generate
RUN rm -fr html && ln -sfn public html
RUN chown -R nginx. .
