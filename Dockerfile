FROM nginx:latest

# create folder
RUN mkdir -p /usr/share/nginx/html/home

# copy files
COPY index.html /usr/share/nginx/html/home/
COPY about.html /usr/share/nginx/html/home/
COPY contact.html /usr/share/nginx/html/home/
COPY style.css /usr/share/nginx/html/home/
COPY script.js /usr/share/nginx/html/home/

# custom nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
