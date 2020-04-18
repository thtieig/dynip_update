#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or using sudo"
  exit
fi

echo "This is a simple script to COMPLETELY UNINSTALL DYNIP_UPDATE"
echo "Current and previous versions (including backups) gets removed."
echo "Press any key to continue"

read voidvar

rm -f /etc/dynip_update.conf*
rm -f /usr/local/bin/dynip_update
rm -f /etc/cron.d/dynip_update

echo "UNISTALL COMPLETED. Thank you for trying DYNIP_UPDATE."
