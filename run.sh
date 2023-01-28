#!/bin/bash

ORIGINDIR=$PWD
BASEDIR=$(dirname $0)

cd $BASEDIR

username="etud"
if test $# -ne 0 ; then
	username=$1
fi

# build image with user etud
echo "================================================="
echo " BUILD IMAGE "
echo "================================================="
echo " "

cd build-image 
./build.sh $1
cd ..

echo " "
echo "================================================="
echo " RUN IMAGE as ubuntu-session"
echo "================================================="
echo " "
echo " default user is called '${username}' "
echo " "
echo " to quit session type: exit "
echo " "

# execute session
docker-compose run --rm ubuntu-session

