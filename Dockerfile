# BASE
FROM alpine:latest

# RUN
RUN apk add nginx; \
    mkdir /run/nginx/; \
    echo "<h1>MY WEB SERVER ORIGINAL</h1>" > /var/www/localhost/htdocs/index.html;
WORKDIR /var/www/localhost/htdocs

# EXPOSE PORTS
EXPOSE 443

# RUN COMMAND
CMD ["/bin/sh", "-c", "nginx -g 'daemon off;'; nginx -s reload;"]
