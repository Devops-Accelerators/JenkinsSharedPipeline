FROM tomcat

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
ADD SpringMVCHibernate.war /usr/local/tomcat/webapps

EXPOSE 8080
