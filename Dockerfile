FROM tomcat:8.0.20-jre8

# Install maven
RUN apt-get -y update && apt-get install -y maven

RUN ["mvn", "compile war:war"]

COPY /target/cloud.war /usr/local/tomcat/webapps/cloud.war