#!/bin/bash
docker run --privileged -d --name jslavetmp fabric8/jenkins-slave-dind
docker exec -it jslavetmp  docker pull maven
sleep 2
docker commit jslavetmp fabric8/jenkins-slave-dind-maven
