FROM node:12.9.1-buster-slim

WORKDIR /tmp
RUN apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade && apt-get install -y alien libaio1
ADD oracle-instantclient19.6*.rpm .
#RUN wget http://yum.oracle.com/repo/OracleLinux/OL7/oracle/instantclient/x86_64/getPackage/oracle-instantclient19.3-basiclite-19.3.0.0.0-1.x86_64.rpm
RUN alien -i --scripts oracle-instantclient*.rpm
RUN rm -f oracle-instantclient19.6*.rpm && apt-get -y autoremove && apt-get -y clean

WORKDIR /alinmamicro
ADD . /alinmamicro/

EXPOSE 3500
CMD exec node .