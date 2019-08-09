FROM wyveo/nginx-php-fpm:latest
WORKDIR /usr/share/nginx
# Aqui vou remover essa pasta padrão nginx e fazer diferente
RUN rm -rf /usr/share/nginx/html
# Aqui vou copiar meu código e colocar dentro da pasta do nginx
COPY . /usr/share/nginx

# O grande ponto ao copiar os arquivos, o que pode dá errado ?
# pode dá errado o gitignore  na qual ele não copia a pasta  vendor
# para solucionar vou instalar composer install
RUN ln -s public html
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer require phpunit/phpunit
RUN vendor/bin/phpunit

