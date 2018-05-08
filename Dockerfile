FROM centos:7

MAINTAINER kyra <magichuihui@gmail.com>

COPY centos-auth-41.repo /etc/yum.repos.d/powerdns-auth-41.repo

COPY powerdns.asc /etc/pki/rpm-gpg/powerdns.asc

ADD pdns.conf /etc/pdns/pdns.conf
ADD recursor.conf /etc/pdns-recursor/recursor.conf
COPY entrypoint.sh /entrypoint.sh


RUN yum install -y epel-release yum-plugin-priorities \
    && yum install -y pdns pdns-recursor pdns-backend-mysql && yum clean all -y

ENTRYPOINT ["/entrypoint.sh"]
