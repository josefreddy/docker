FROM ubuntu
MAINTAINER subbu
RUN apt-get update && apt-get install -y git maven
RUN apt-get install -y openjdk-8-jdk 
ADD http://mirrors.jenkins.io/war-stable/latest/jenkins.war .
ENTRYPOINT ["java","-jar","jenkins.war"]
