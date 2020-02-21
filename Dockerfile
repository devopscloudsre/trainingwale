# Pull base image
From tomcat:8-jre8

# Maintainer
MAINTAINER "trainingwale"

# copy war file on to container
COPY ./*.war /usr/local/tomcat/webapps
