FROM stackexchange/bosun
MAINTAINER lukas.pustin@codecentric.de

COPY supervisord.conf /etc/supervisor/conf.d/
COPY opentsdb.conf /tsdb/

EXPOSE 4242
CMD ["/usr/bin/supervisord"]

