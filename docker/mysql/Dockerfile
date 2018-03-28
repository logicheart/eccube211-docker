FROM mysql:5.7
MAINTAINER hiroyasu55

RUN apt-get update
RUN apt-get -y install vim git

COPY config/custom.cnf /etc/mysql/conf.d/
