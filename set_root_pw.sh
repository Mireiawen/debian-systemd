#!/bin/bash

if [ -z "${SSH_KEY}" ]
then
	logger "=> Please pass your public key in the SSH_KEY environment variable"
	exit 1
fi

for MYHOME in /root
do
	logger "=> Adding SSH key to ${MYHOME}"
	mkdir -p ${MYHOME}/.ssh
	chmod go-rwx ${MYHOME}/.ssh
	echo "${SSH_KEY}" > ${MYHOME}/.ssh/authorized_keys
	chmod go-rw ${MYHOME}/.ssh/authorized_keys
	logger "=> Done!"
done
