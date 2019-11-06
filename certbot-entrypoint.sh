#!/bin/bash

while : ; 
do 
    if [ -s /etc/letsencrypt/live/primary_domain/privkey.pem ] ; 
    then echo 'Certificates exist, attempting renewal...' ; 
      certbot renew --test-cert ; 
    else echo 'Certificates do not exist, getting certificates for the first time...'; 
      certbot certonly --test-cert --webroot --webroot-path /var/www/static --cert-name primary_domain --domain $domain -n --agree-tos -m $certbot_email ; 
    fi ;
    cp /etc/letsencrypt/live/primary_domain/privkey.pem /data/privkey.pem  
    && cp /etc/letsencrypt/live/primary_domain/fullchain.pem /data/fullchain.pem 
    && echo date > /data/certbot_certificates_copied.txt
    echo 'Sleep for 12 hours...' ;
    sleep 12h ;
done