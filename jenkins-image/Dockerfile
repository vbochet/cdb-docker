# Download base image Jenkins 2.114
FROM jenkins/jenkins:2.114

MAINTAINER Vincent Bochet (vbochet@excilys.com)

USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && apt-get install -y libltdl7 \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

#COPY jobconfig.xml $JENKINS_HOME/jobs/cdb/config.xml

USER jenkins
COPY jobconfig.xml $JENKINS_HOME/jobs/cdb/config.xml
COPY webapp-image/ /home/webapp-image/

# Install plugins in Jenkins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

