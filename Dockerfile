FROM basex/basexhttp:9.4.2
LABEL maintainer="cmil@hashtable.de"
COPY xml /histvv-data
RUN echo "# Local Options" >> /srv/basex/.basex
RUN echo "CHOP = false" >> /srv/basex/.basex
RUN echo "SERIALIZER = indent=no" >> /srv/basex/.basex
CMD ["/usr/local/bin/basexhttp", "-c", "create database histvv /histvv-data"]
