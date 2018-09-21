#!/bin/bash

for cert in certs/*.pem
do
	if bash backends/$BACKEND.sh verify cacerts/$CACERT $cert; then
		echo "[OK] $BACKEND cacerts/$CACERT $cert"
	else
		echo "[ERR] $BACKEND cacerts/$CACERT $cert"
		exit -1
	fi
done

