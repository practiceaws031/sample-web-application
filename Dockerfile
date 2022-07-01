FROM tomcat:latest
LABEL Name="Satheesh T"
COPY target/WebApp.war /usr/local/tomcat/webapps/webApp.war

