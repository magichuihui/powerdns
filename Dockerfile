FROM centos:7

MAINTAINER kyra <magichuihui@gmail.com>

COPY centos-auth-41.repo /etc/yum.repos.d/powerdns-auth-41.repo

COPY powerdns.asc /etc/pki/rpm-gpg/powerdns.asc


RUN yum install -y epel-release yum-plugin-priorities \
    && yum install -y pdns pdns-backend-mysql && yum clean all -y

