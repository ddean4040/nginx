#!/bin/sh

#
# Script to configure a patched copy of nginx that can replace the Debian / Ubuntu version
#

./auto/configure --with-http_ssl_module \
--with-mail \
--with-mail_ssl_module \
--user=www-data \
--group=www-data \
--prefix=/etc/nginx  \
--sbin-path=/usr/sbin/nginx \
--conf-path=/etc/nginx/nginx.conf  \
--error-log-path=/var/log/nginx/error.log  \
--http-client-body-temp-path=/var/lib/nginx/body  \
--http-fastcgi-temp-path=/var/lib/nginx/fastcgi  \
--http-log-path=/var/log/nginx/access.log  \
--http-proxy-temp-path=/var/lib/nginx/proxy  \
--http-scgi-temp-path=/var/lib/nginx/scgi  \
--http-uwsgi-temp-path=/var/lib/nginx/uwsgi  \
--lock-path=/var/lock/nginx.lock  \
--pid-path=/var/run/nginx.pid \
--with-sha1=/usr/include/openssl \
--with-md5=/usr/include/openssl