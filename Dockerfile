FROM nginx:1.21.1-alpine

# Remove default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom NGINX configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy SSL certificates
# COPY certs/ca-certificates.crt /etc/nginx/certs/ca-certificates.crt

EXPOSE 8001
EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
