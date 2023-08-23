# FROM tomcat:8.0.20-jre8
# # Dummy text to test 
# COPY target/myweb*.war /usr/local/tomcat/webapps/myweb.war

FROM openjdk:8u151-jdk-alpine3.7

EXPOSE 8070

ENV APP_HOME /usr/src/app

COPY target/myweb*.war $APP_HOME/app.war

WORKDIR $APP_HOME

ENTRYPOINT exec java -war app.war
