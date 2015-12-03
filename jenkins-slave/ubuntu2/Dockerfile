FROM jenkinsdocker_slave:latest

MAINTAINER Joost van Dieten

# Login as jenkins
ENV HOME $JENKINS_HOME/worker
USER jenkins

# Start
CMD /var/slave/start.sh
