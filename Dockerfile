FROM ghcr.io/jobscale/php-fpm
RUN rm -fr *
RUN composer create-project laravel/laravel example-app
RUN mv example-app/* example-app/.[a-z]* . && rmdir example-app
RUN ./artisan key:generate
RUN ln -sfn public html
RUN chown -R nginx. .
