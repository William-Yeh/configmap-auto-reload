FROM nginx:1.16.0-alpine

RUN apk update  &&  apk add inotify-tools bash tini


WORKDIR /opt
COPY watch-nginx.sh .
RUN  chmod +x  watch-nginx.sh

EXPOSE 80

# Run your program under Tini
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/opt/watch-nginx.sh"]