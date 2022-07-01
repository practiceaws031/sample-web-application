FROM tomcat:latest
LABEL Name="Satheesh"
COPY target/WebApp.war /usr/local/tomcat/webapps/webApp.war

