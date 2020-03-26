# Pull base image
From tomcat:9-jre9

# Maintainer
MAINTAINER "trainingwale.com"

# copy war file on to container
COPY ./*.war /usr/local/tomcat/webapps
