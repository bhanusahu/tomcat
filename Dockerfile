FROM tomcat:8.0-alpine
LABEL maintainer="bhanujai@gmail.com"
RUN mkdir -p /usr/local/tomcat/webapps/sample
RUN chmod -R 775 /usr/local/tomcat/webapps/sample

COPY sample  /usr/local/tomcat/webapps/sample
#ADD sample.war /usr/local/tomcat/webapps/
ENV APP_VERSION $APP_VERSION
#COPY index.html /usr/local/tomcat/webapps/sample
COPY index.jsp /usr/local/tomcat/webapps/ROOT/
RUN echo This image is built by Bhanu : Verion :: $APP_VERSION > /usr/local/tomcat/webapps/ROOT/index.jsp
CMD bash -c "while true; do echo This image is built by Bhanu : Verion :: $APP_VERSION > /usr/local/tomcat/webapps/ROOT/index.jsp; sleep 15; done"
EXPOSE 8080
CMD ["catalina.sh", "run"]
