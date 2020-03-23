# Version 0.1

FROM centos:7

MAINTAINER shihd@fastmail.com

RUN yum install -y bzip2 

RUN useradd gbase && echo "gbase:gbase" | chpasswd

USER gbase

WORKDIR /home/gbase

COPY GBase8a-NoLicense-Free-8.6.2_build43-R7-redhat7.3-x86_64.tar.bz2 ./

RUN tar xfj ./GBase8a-NoLicense-Free-8.6.2_build43-R7-redhat7.3-x86_64.tar.bz2 

RUN cd GBaseInstall && sh -c '/bin/echo -e "yes\n\n\n\n" | sh Install_lin.sh'

RUN source ~/.bashrc

#CMD gbase.server start

#RUN sh -c '/bin/echo -e "SET PASSWORD FOR root = PASSWORD(\'root\');\\q" | gbase -uroot'
