# Start with the penultimate stable version of Debian
FROM debian:bullseye

# Update package lists and install NGINX 
RUN apt-get update && apt-get install -y nginx 
COPY ./conf/nginx.conf /etc/nginx/conf.d/nginx.conf

COPY ./tools/index.html /var/www/html
COPY ./tools/styles.css /var/www/html
EXPOSE 4000

CMD ["nginx" ,"-g","daemon off;"]