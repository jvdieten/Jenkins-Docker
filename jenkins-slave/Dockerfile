FROM ubuntu:14.04

MAINTAINER Joost van Dieten

RUN apt-get update
RUN apt-get -f install
RUN apt-get install -y -q --no-install-recommends curl 
RUN apt-get install -y -q --no-install-recommends git
RUN apt-get install -y -q --no-install-recommends default-jdk 

# Set JENKINS_HOME same as master
ENV JENKINS_HOME /var/jenkins_home

# Jenkins is ran with user `jenkins`, uid = 1000
# If you bind mount a volume from host/volume from a data container,
# ensure you use same uid
RUN mkdir -p $JENKINS_HOME
RUN useradd -d "$JENKINS_HOME/worker" -u 1000 -m -s /bin/bash jenkins

# Add swarm-client
RUN curl -o /bin/swarm-client.jar -k http://maven.jenkins-ci.org/content/repositories/releases/org/jenkins-ci/plugins/swarm-client/2.0/swarm-client-2.0-jar-with-dependencies.jar

# Add start script
RUN mkdir /var/slave
RUN chown -R jenkins:jenkins /var/slave

COPY start.sh /var/slave/start.sh
RUN chmod +x /var/slave/start.sh

