cd /usr/local/gitlab_install/
curl https://packages.gitlab.com/gpg.key 2> /dev/null | sudo apt-key add - &>/dev/null
apt-get install curl openssh-server ca-certificates postfix
dpkg -i gitlab-ce_8.6.4-ce.0_amd64.deb
# /opt/gitlab/embedded/bin/runsvdir-start &
# gitlab-ctl reconfigure
