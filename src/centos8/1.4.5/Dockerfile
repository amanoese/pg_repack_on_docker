FROM centos:8
MAINTAINER amanoese

RUN dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN dnf -y module disable postgresql
RUN dnf update -y && \
    dnf groupinstall -y "Development Tools" && \
    dnf install -y kernel-devel kernel-headers openssl-devel zlib zlib-devel wget && \
    dnf install -y postgresql12 postgresql12-devel readline-devel

ENV PATH $PATH:/usr/pgsql-12/bin
RUN wget --no-check-certificate -q -O pg_repack.zip "https://api.pgxn.org/dist/pg_repack/1.4.4/pg_repack-1.4.4.zip"
RUN unzip pg_repack.zip && rm pg_repack.zip
WORKDIR pg_repack-1.4.5
RUN ls -la /usr/pgsql-12/bin/pg_config
RUN make && make install

CMD pg_repack
