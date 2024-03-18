FROM nginx:latest
COPY ./src /usr/share/nginx/html
COPY ./site-configs /etc/nginx/sites-enabled
