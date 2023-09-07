FROM nginx:stable

# RUN mkdir /etc/nginx/ssl
# CMD ["mv", "/etc/hosts", "/etc/hosts.bak"]
# COPY ./hosts /etc/hosts
# CMD ["mv", "/etc/resolv.conf", "/etc/resolv.conf.bak"]
# COPY ./resolv.conf /etc/resolv.conf
# RUN echo 'nameserver 192.168.128.2' >> /etc/resolv.conf
# RUN openssl genrsa -out /etc/nginx/ssl/server.key 2048
# CSR（証明書署名要求）を作成します。
# RUN openssl req -new -key /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.csr
# RUN openssl req -new -key /etc/nginx/ssl/server.key -subj "/C=JP/ST=Tokyo/CN=localhost:9080/" -out /etc/nginx/ssl/server.csr
# CRT（SSLサーバ証明書）を作成します。
# RUN openssl x509 -days 15 -req -signkey /etc/nginx/ssl/server.key -in /etc/nginx/ssl/server.csr -out /etc/nginx/ssl/server.crt
