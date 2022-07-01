FROM tomcat:latest
LABEL Name="Satheesh T devops ss"
COPY target/WebApp.war /usr/local/tomcat/webapps/webApp.war

