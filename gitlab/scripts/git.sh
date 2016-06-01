cd /usr/local/gitlab_install/git-2.7.4
apt-get install -y libcurl4-openssl-dev libexpat1-dev gettext libz-dev libssl-dev build-essential
./configure
make prefix=/usr/local all
make install

apt-get install -y --force-yes postfix
