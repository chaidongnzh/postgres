FROM postgres:11.1

RUN apt update

RUN apt install -y curl

RUN curl https://dl.2ndquadrant.com/default/release/get/deb | bash

RUN apt install -y postgresql-11-repmgr

RUN chmod 777 /usr/lib/postgresql/11/bin/pg_ctl

RUN ln -s /usr/lib/postgresql/11/bin/pg_ctl /usr/bin/pg_ctl
