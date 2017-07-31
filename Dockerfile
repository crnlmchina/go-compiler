FROM centos:latest

MAINTAINER wangyuxuan

ADD go1.8.3.linux-amd64.tar.gz /usr/local/

ENV GOPATH /var/golib
ENV GOROOT /usr/local/go
ENV PATH ${PATH}:${GOROOT}/bin

RUN mkdir -p ${GOPATH}

RUN yum -y update
	
RUN yum -y install git

CMD /bin/bash
