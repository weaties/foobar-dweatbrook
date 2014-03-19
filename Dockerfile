FROM mminke/apache-tomcat-7.0.50

RUN apt-get update
RUN apt-get -y install git

ENV CATALINA_BASE /cedar_base

ADD . $CATALINA_BASE

ADD target/cedar-0.0.1-SNAPSHOT.war $CATALINA_BASE/webapps/ROOT.war

CMD ["catalina.sh", "run"]
