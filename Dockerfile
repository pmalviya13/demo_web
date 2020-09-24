# Stage 1
FROM node:10-alpine as build-step
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build --prod

FROM nginx:alpine
LABEL author="pankaj malviya"
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build-step /app/dist/demo-web /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]