FROM yussica/zycubuntu
MAINTAINER yussica "331253025@qq.com"
ENV REFRESHED_AT 2016-04-06

RUN mkdir /usr/local/gitlab_install

# ADD  /usr/local/gitlab_install
ADD gitlab-ce.list /etc/apt/sources.list.d
ADD gitlab-ce_8.6.4-ce.0_amd64.deb /usr/local/gitlab_install
ADD git-2.7.4.tar.gz /usr/local/gitlab_install
ADD go1.5.3.linux-amd64.tar.gz /usr/local/gitlab_install
ADD ruby-2.1.8.tar.gz /usr/local/gitlab_install

ADD scripts/git.sh /usr/local/gitlab_install
ADD scripts/gitlab.sh /usr/local/gitlab_install
ADD scripts/go.sh /usr/local/gitlab_install
ADD scripts/ruby.sh /usr/local/gitlab_install
ADD scripts/postgresql.sh /usr/local/gitlab_install
ADD scripts/gitlab-reconfigure.sh /usr/local/gitlab_install

RUN apt-get -y update
RUN update-alternatives --set editor /usr/bin/vim.basic
RUN apt-get install -y build-essential zlib1g-dev libyaml-dev libssl-dev libgdbm-dev libreadline-dev libncurses5-dev libffi-dev curl openssh-server checkinstall libxml2-dev libxslt-dev libcurl4-openssl-dev libicu-dev logrotate python-docutils pkg-config cmake nodejs

WORKDIR /usr/local/gitlab_install
RUN chmod 755 git.sh
RUN chmod 755 gitlab.sh
RUN chmod 755 go.sh
RUN chmod 755 ruby.sh
RUN chmod 755 postgresql.sh
RUN chmod 755 gitlab-reconfigure.sh

RUN [ "bash", "git.sh" ]
RUN [ "bash", "ruby.sh" ]
RUN [ "bash", "go.sh" ]
RUN [ "bash", "postgresql.sh" ]
RUN [ "bash", "gitlab.sh" ]

# RUN apt-get install -y gitlab-ce
# RUN dpkg -i gitlab-ce_8.6.4-ce.0_amd64.deb

# RUN rm gitlab-ce_8.6.4-ce.0_amd64.deb
# ENTRYPOINT [ "gitlab-ctl", "reconfigure" ]

EXPOSE 80
