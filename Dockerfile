# Deploy Stage
FROM nginx:stable-alpine

## Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
