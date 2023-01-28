#!/bin/bash

ORIGINDIR=$PWD
BASEDIR=$(dirname $0)

cd $BASEDIR

if test $# -ne 0 ; then
	docker build -t ubuntu-session --build-arg username=$1 .
else	
	docker build -t ubuntu-session --build-arg username=etud .
fi

