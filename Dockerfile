FROM openjdk:8-jdk-alpine
LABEL Author=lclinhares@hotmail.com
      Description="SRVOpenfire"
      
ENV OPENFIRE_VERSION=4.5.3\
    OPENFIRE_USER=openfire \
    OPENFIRE_DATA_DIR=/var/lib/openfire \
    OPENFIRE_LOG_DIR=/var/log/openfire \
    DAEMON_DIR=/opt/openfire \
    DAEMON_LIB=/opt/openfire/lib

WORKDIR /opt/
RUN wget https://github.com/igniterealtime/Openfire/releases/download/v4.5.3/openfire_4_5_3.tar.gz && tar -zxvf openfire_4_5_3.tar.gz && rm openfire_4_5_3.tar.gz
EXPOSE 3478/tcp 3479/tcp 5222/tcp 5223/tcp 5229/tcp 5275/tcp 5276/tcp 5262/tcp 5263/tcp 7070/tcp 7443/tcp 7777/tcp 9090/tcp 9091/tcp

USER root
CMD java -server -DopenfireHome=${DAEMON_DIR} \
 -Dopenfire.lib.dir=${DAEMON_LIB} -Dlog4j.configurationFile=${DAEMON_LIB}/log4j2.xml -classpath ${DAEMON_LIB}/startup.jar\
 -jar ${DAEMON_LIB}/startup.jar
