FROM yussica/zycubuntu
MAINTAINER yussica "331253025@qq.com"

ENV REFRESHED_AT 2016-05-30

WORKDIR /usr/local/zyc
ADD Percona-Server-5.7.11-4-r5c940e1-trusty-x86_64-bundle.tar .
RUN apt-get update
RUN apt-get install -y psmisc mysql-common libjemalloc1 libaio1 libmecab2
RUN dpkg -i percona-server-common-5.7_5.7.11-4-1.trusty_amd64.deb
RUN dpkg -i percona-server-client-5.7_5.7.11-4-1.trusty_amd64.deb

EXPOSE 3306 
