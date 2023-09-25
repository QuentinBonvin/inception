FROM debian:buster

RUN apt-get update -y

RUN apt install mariadb-server zsh -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/script.sh /

CMD ["bash", "script.sh"]

