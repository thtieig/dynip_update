#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or using sudo"
  exit
fi

echo "This is a simple script to COMPLETELY UNINSTALL DYNIP_UPDATE"
echo "Current and previous versions (including backups) gets removed."
echo "Press any key to continue"

read voidvar

rm -fv /etc/dynip_update.conf*
rm -fv /usr/local/bin/dynip_update
rm -fv /etc/cron.d/dynip_update

echo "UNISTALL COMPLETED. Thank you for trying DYNIP_UPDATE."
