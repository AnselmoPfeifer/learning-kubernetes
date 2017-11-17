FROM tomcat:8.5-jre8

ENV DEBIAN_FRONTEND noninteractive

ENV removeDir 'ROOT docs examples'

RUN rm -rf /usr/local/tomcat/work/*
RUN cd /usr/local/tomcat/webapps/ \
    && rm -rf ${removeDir}

COPY files/servers.xml /usr/local/tomcat/conf/servers.xml
COPY files/ROOT /usr/local/tomcat/webapps/ROOT

EXPOSE 8080