FROM certbot/certbot
COPY certbot-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/certbot-entrypoint.sh
RUN ln -s /usr/local/bin/certbot-entrypoint.sh / # backwards compat
ENTRYPOINT ["/certbot-entrypoint.sh"]