FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY ./assets/src/index.html /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

# FROM nginx:latest
# COPY . /usr/share/nginx/html/index.html