FROM nginx:stable

RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak
# RUN mkdir /etc/nginx/ssl
RUN openssl genrsa -out /etc/nginx/ssl/server.key 2048
# CSR（証明書署名要求）を作成します。
#RUN openssl req -new -key /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.csr
RUN openssl req -new -key /etc/nginx/ssl/server.key -subj "/C=JP/ST=Tokyo/CN=localhost:9080/" -out /etc/nginx/ssl/server.csr
# CRT（SSLサーバ証明書）を作成します。
RUN openssl x509 -days 3650 -req -signkey /etc/nginx/ssl/server.key -in /etc/nginx/ssl/server.csr -out /etc/nginx/ssl/server.crt
