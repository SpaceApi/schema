FROM nginx:1.18-alpine

ADD ./*.json /usr/share/nginx/html/
