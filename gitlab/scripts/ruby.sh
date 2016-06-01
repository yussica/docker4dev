cd /usr/local/gitlab_install/ruby-2.1.8
./configure --disable-install-rdoc
make
make install

gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
gem sources -l

gem install bundler --no-ri --no-rdoc
