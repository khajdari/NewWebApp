FROM tomcat:8.5.4-jre8

MAINTAINER Kristian Hajdari, Ioannis Andreadis

COPY NewWebApp.war /usr/local/tomcat/webapps/

