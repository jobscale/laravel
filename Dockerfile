FROM jobscale/php-fpm
COPY . .
RUN ./composer.phar install \
 && ./artisan key:generate \
 && rm -fr html && ln -sfn public html \
 && chown -R www-data. storage resources bootstrap
