# Download base image ubuntu 16.04
FROM tomcat:8.0.50-jre8

MAINTAINER Vincent Bochet (vbochet@excilys.com)

# Update Ubuntu Software repository
RUN apt-get update -y && \
	apt-get upgrade -y

RUN rm -rf $CATALINA_HOME/webapps/ROOT
COPY ROOT.war $CATALINA_HOME/webapps/ROOT.war
