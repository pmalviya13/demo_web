FROM nginx:alpine
LABEL author="pankaj malviya"
COPY nginx.conf /etc/nginx/nginx.conf
COPY dist/demo-web /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]