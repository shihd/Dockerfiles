# Version 0.1

FROM centos:7

MAINTAINER shihd@fastmail.com

RUN yum clean metadata && yum clean all && yum update && yum install -y bzip2

RUN useradd gbase && echo "gbase:gbase" | chpasswd

USER gbase

WORKDIR /home/gbase

RUN mkdir gbase_install

ADD GBase8a-NoLicense-Free-8.6.2_build43-R7-redhat7.3-x86_64.tar.bz2 WORKDIR/gbase_install
