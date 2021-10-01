FROM centos:8
LABEL maintainer="amanoese <amanoese@gmail.com>"

RUN dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN dnf -y module disable postgresql
RUN dnf update -y && \
    dnf groupinstall -y "Development Tools" && \
    dnf install -y kernel-devel kernel-headers openssl-devel zlib zlib-devel wget && \
    dnf install -y postgresql10 postgresql10-devel readline-devel

ENV PATH $PATH:/usr/pgsql-10/bin
RUN wget --no-check-certificate -q -O pg_repack.zip "https://api.pgxn.org/dist/pg_repack/1.4.3/pg_repack-1.4.3.zip"
RUN unzip pg_repack.zip && rm pg_repack.zip
WORKDIR pg_repack-1.4.3
RUN ls -la /usr/pgsql-10/bin/pg_config
RUN make && make install

CMD pg_repack
