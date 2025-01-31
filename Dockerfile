FROM maven AS sample123
LABEL Name="satheesh@gmail.com"
USER root
RUN mkdir git
RUN cd git && git clone -b ansible-sonar https://github.com/practiceaws031/sample-web-application.git
RUN cd /git/sample-web-application && mvn install

FROM tomcat 
WORKDIR webapps 
COPY --from=sample123 /git/sample-web-application/target/WebApp.war .
RUN rm -rf ROOT && mv WebApp.war ROOT.war
CMD ["catalina.sh", "run"]
