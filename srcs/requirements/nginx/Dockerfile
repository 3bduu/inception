# Start with the penultimate stable version of Debian
FROM debian:bullseye

# Update package lists and install NGINX and OPENSSL
RUN apt-get update && apt-get install -y nginx openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/abenlahb.key -out /etc/nginx/ssl/abenlahb.crt -subj "/C=MA/ST=benguerir/L=benguerir/O=cybersec/OU=it/CN=abenlahb.42.fr/"

#Config FILE
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

#PORT
EXPOSE 443

#Start Container
CMD ["nginx" ,"-g","daemon off;"]