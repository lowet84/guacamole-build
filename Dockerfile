FROM tomcat:8-jre8-alpine

ADD guacamole-client/guacamole-docker/bin/start.sh /start.sh
RUN rm -r /usr/local/tomcat/webapps/ROOT
ADD out /opt/guacamole
RUN ln -s /opt/guacamole/guacamole.war /usr/local/tomcat/webapps/ROOT.war
#ADD guacamole-client/guacamole.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD /start.sh