# Version 0.1

FROM centos:7

LABEL maintainer="shihd@fastmail.com"

RUN yum install -y bzip2 \
    && yum install -y lsof \
    && yum install -y dos2unix \
    && useradd gbase && echo "gbase:gbase" | chpasswd \
    && echo "root:root" | chpasswd 

WORKDIR /home/gbase

COPY start.sh ./

RUN dos2unix start.sh && chmod 777 start.sh

USER gbase

COPY GBase8a-NoLicense-Free-8.6.2_build43-R7-redhat7.3-x86_64.tar.bz2 ./

RUN tar xfj ./GBase8a-NoLicense-Free-8.6.2_build43-R7-redhat7.3-x86_64.tar.bz2 \
    && cd GBaseInstall \
    && sh -c '/bin/echo -e "yes\n\n\n\n" | sh Install_lin.sh' \
    && source ~/.bashrc

EXPOSE 5258

CMD ["sh","start.sh"]


