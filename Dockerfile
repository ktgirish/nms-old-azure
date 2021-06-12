From tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/nms-*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8585
CMD ["catalina.sh","run"]