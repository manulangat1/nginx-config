# nginx/Dockerfile
FROM nginx:alpine


RUN rm /etc/nginx/conf.d/default.conf
# Copy main nginx.conf
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Copy all modular configs
# COPY nginx/conf.d/*.conf /etc/nginx/conf.d/