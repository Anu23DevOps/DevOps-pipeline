# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "Anusha Ravivarman" 
COPY ./webapp.war /usr/local/tomcat/webapps
