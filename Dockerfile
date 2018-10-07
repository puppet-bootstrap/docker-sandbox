FROM centos:7

RUN yum -y install http://yum.puppet.com/puppet6/puppet6-release-el-7.noarch.rpm && \
    yum -y install puppet-agent && \
    yum clean all
