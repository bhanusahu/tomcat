FROM tomcat:8.0-alpine
LABEL maintainer="bhanujai@gmail.com"
RUN mkdir -p /usr/local/tomcat/webapps/sample

ADD sample.war /usr/local/tomcat/webapps/

COPY index.html /usr/local/tomcat/webapps/sample
COPY index.jsp /usr/local/tomcat/webapps/ROOT/
EXPOSE 8080
CMD ["catalina.sh", "run"]
