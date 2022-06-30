FROM tomcat:latest
LABEL Name:Satheesh
COPY target/webApp.war /usr/local/tomcat/webapps/webApp.war

