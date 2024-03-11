#!/bin/bash

SERVICENAME="nginx"

systemctl is-active --quiet $SERVICENAME
STATUS=$? # return value is 0 if running

if [[ "$STATUS" -ne "0" ]]; then
        echo "Service '$SERVICENAME' is not curently running... Starting now..."
		systemctl start $SERVICENAME 
else
		echo "Service IS running"
fi