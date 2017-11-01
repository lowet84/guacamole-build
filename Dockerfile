FROM tomcat:8-jre8-alpine

ADD guacamole-client/guacamole-docker/bin/start.sh /start.sh
RUN rm -r /usr/local/tomcat/webapps/ROOT
ADD guacamole-client/guacamole.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD /start.sh