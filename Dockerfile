FROM maven AS sample123
LABEL Name="satheesh@gmail.com"
RUN mkdir git
RUN cd git && git clone -b ansible-sonar https://github.com/practiceaws031/sample-web-application.git
RUN mvn install

FROM tomcat 
WORKDIR webapps 
COPY --from=sample123 sample-web-application/target/WebApp.war .
RUN rm -rf ROOT && mv WebApp.war ROOT.war
ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]
