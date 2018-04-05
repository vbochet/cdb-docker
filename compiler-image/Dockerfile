# Download base image ubuntu 16.04
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

MAINTAINER Vincent Bochet (vbochet@excilys.com)

# Update Ubuntu Software repository
RUN apt-get update -y && \
	apt-get upgrade -y

# Install required programs
RUN apt-get install apt-utils -y
RUN apt-get install git -y && \
	apt-get install openjdk-8-jdk -y && \
	apt-get install maven -y

# Check programs version
RUN java -version && \
    mvn --version && \
    git --version

COPY script.sh /var/script.sh
