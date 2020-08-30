FROM basex/basexhttp:9.4.2
LABEL maintainer="cmil@hashtable.de"
COPY xml /histvv-data
CMD ["/usr/local/bin/basexhttp", "-c", "create database histvv /histvv-data"]
