#!/bin/sh

exec_sed() {
  if [ `uname` == 'Darwin' ]; then
#   which gsed
#   brew install gnu-sed
    COMMAND="gsed $@"
  else
    COMMAND="sed $@"
  fi
  eval "${COMMAND}"
}

REPOSITORY='coreos-vagrant'
VAGRANTFILE='Vagrantfile'

cd `dirname $0`

rm -rf $REPOSITORY
git clone git://github.com/coreos/${REPOSITORY}.git 
mv -f ${REPOSITORY}/${VAGRANTFILE} .
rm -rf $REPOSITORY

PROVISION_PLACE='if $share_home'
PROVISION=`exec_sed '-n "s/^\([ ]*\)\\\\${PROVISION_PLACE}$/\1config\.vm\.provision \"shell\", path: \"provisioning\.sh\"/p" ${VAGRANTFILE}'`
exec_sed '-i "/^\([ ]*\)\\${PROVISION_PLACE}$/i \\${PROVISION}" ${VAGRANTFILE}'
