#!/bin/sh

# if [ `uname` == 'Darwin*' ]; then
#   which gsed

# check path and manpath
#   brew install gnu-sed
# fi

# docker-compose
DOCKER_COMPOSE_VERSION=`git ls-remote --tags git://github.com/docker/compose.git | awk '{print $2}' | grep -v "docs\|rc" | awk -F'/' '{print $3}' | sort -V | tail -n1`
mkdir -p /opt/bin
curl -L https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` > /opt/bin/docker-compose

chmod +x /opt/bin/docker-compose

# sh settings
cat /home/core/.bashrc > /home/core/.bashrc_bak
echo 'cd /home/core/docker' >> /home/core/.bashrc_bak
mv -f /home/core/.bashrc_bak /home/core/.bashrc
chown core:core /home/core/.bashrc
