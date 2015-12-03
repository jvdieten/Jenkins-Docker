Jenkins-Docker
==============

Base project for distributing jenkins through docker containers in a scalable way

# Prerequisites
For MAC and Windows users 
Docker toolbox (https://www.docker.com/docker-toolbox)

Other:
A docker installation with docker-compose installed

# Setup

Step 1: Build all docker images

	$ make build

Step 2: Start jenkins and nginx server

	$ make run

Step 3: In the slave.env file enable the JENKINS_MASTER property and point it to the Jenkins HOST. After that you can start the jenkins slaves 

        $ make run-slaves

# Current features

* Jenkins-master the main jenkins docker images
* Jenkins-slave -> base slave image that automaticly registers slaves to jenkins-master
* Jenkins-slave:ubuntu -> demo slave that is build on basis of base slave image
* Jenkins-slave:ubuntu2 -> demo slave that is build on basis of base slave image
* Jenkins-data -> the storage container to preserve jenkins-master/slaves state
* Jenkins-nginx -> to serve jenkins  

