FROM yussica/nodejs
MAINTAINER yussica "331253025@qq.com"

ENV REFRESHED_AT 2016-05-30

WORKDIR /usr/local/nodejs
RUN cnpm install -g json-server
RUN ln -s /usr/local/nodejs/node/lib/node_modules/json-server/bin/index.js /usr/local/bin/json-server

EXPOSE 3000
