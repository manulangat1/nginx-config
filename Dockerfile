# nginx/Dockerfile
FROM nginx:alpine


RUN rm /etc/nginx/conf.d/default.conf
# Copy main nginx.conf
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/conf.d /etc/nginx/conf.d

# COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
# COPY ./nginx/conf.d/ /etc/nginx/conf.d/

# Copy all modular configs
# COPY nginx/conf.d/*.conf /etc/nginx/conf.d/