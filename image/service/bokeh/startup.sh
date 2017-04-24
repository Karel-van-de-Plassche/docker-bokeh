#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

#rm /etc/nginx/conf.d/*
#cat > /etc/nginx/conf.d/bokeh.conf <<EOL
#server {
#    listen 80 default_server;
#    server_name _;
#
#    access_log  /tmp/bokeh.access.log combined;
#    error_log   /tmp/bokeh.error.log debug;
#
#    location / {
#        proxy_pass http://127.0.0.1:5100;
#        proxy_set_header Upgrade \$http_upgrade;
#        proxy_set_header Connection "upgrade";
#        proxy_http_version 1.1;
#        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
#        proxy_set_header Host \$host:\$server_port;
#        proxy_buffering off;
#    }
#
#    location /ws {
#        proxy_pass http://127.0.0.1:5100/ws;
#        proxy_set_header Upgrade \$http_upgrade;
#        proxy_set_header Connection "upgrade";
#        proxy_http_version 1.1;
#        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
#        proxy_set_header Host \$host:\$server_port;
#        proxy_buffering off;
#    }
#
#}
#EOL

echo $(/sbin/ip route|awk '/default/ { print $3 }') > /container/environment/HOST_IP

exit 0
