FROM ubuntu:14.04
MAINTAINER yussica "331253025@qq.com"

ENV REFRESHED_AT 2016-04-06

# backup original sources.list
RUN [ "mv", "/etc/apt/sources.list", "/etc/apt/sources.list.bak" ]

# overwrite sources.list
ADD sources.list /etc/apt

RUN apt-get -y update
RUN apt-get -y install apt-transport-https
RUN apt-get -y update
RUN apt-get -y install vim wget curl
RUN apt-get -y install build-essential zlib1g-dev libyaml-dev libssl-dev libgdbm-dev libreadline-dev libncurses5-dev libffi-dev curl openssh-server checkinstall libxml2-dev libxslt-dev libcurl4-openssl-dev libicu-dev logrotate python-docutils pkg-config cmake
