FROM yussica/zycubuntu
MAINTAINER yussica "331253025@qq.com"

ENV REFRESHED_AT 2016-05-30

RUN mkdir /usr/local/nodejs

ADD node-v4.4.5-linux-x64.tar.xz /usr/local/nodejs

RUN mv /usr/local/nodejs/node-v4.4.5-linux-x64 /usr/local/nodejs/node-v4.4.5
WORKDIR /usr/local/nodejs
RUN ln -s node-v4.4.5 node
RUN ln -s /usr/local/nodejs/node/bin/node /usr/local/bin/node
RUN ln -s /usr/local/nodejs/node/bin/npm /usr/local/bin/npm
RUN node/bin/npm set registry https://npm.tuna.tsinghua.edu.cn/
RUN node/bin/npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN ln -s /usr/local/nodejs/node/bin/cnpm /usr/local/bin/cnpm
