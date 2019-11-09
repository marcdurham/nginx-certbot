FROM certbot/certbot
COPY app/ /
RUN chmod +x /app/certbot-entrypoint.sh
#RUN ln -s /usr/local/bin/certbot-entrypoint.sh / # backwards compat
ENTRYPOINT ["cat","/app/certbot-entrypoint.sh"]