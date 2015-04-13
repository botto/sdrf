FROM alpine:latest

RUN apk update
RUN apk add nginx-lua
RUN rm -rf /var/cache/apk/*

RUN mkdir -p /tmp/nginx/client-body

COPY build/etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY build/etc/nginx/conf.d/docker-registry.conf /etc/nginx/conf.d/docker-registry.conf

CMD ["nginx", "-g", "daemon off;"]
