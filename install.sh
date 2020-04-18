#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or using sudo"
  exit
fi

echo "This is a simple script to INSTALL DYNIP_UPDATE"
echo "It REPLACES the main script with the latest version and creates a backup of the config file, if an older version is present"
echo "Press any key to continue"

read voidvar

if [ -f /etc/dynip_update.conf ]; then 
  echo "Found previous config file. Backing up"
  EXTENSION=$(date +%Y%m%d_%H%M%S)
  mv /etc/dynip_update.conf /etc/dynip_update.conf.${EXTENSION}
  echo "Backup: /etc/dynip_update.conf.${EXTENSION}"
fi

cp dynip_update.conf.example /etc/dynip_update.conf
chmod 600 /etc/dynip_update.conf
cp -f dynip_update /usr/local/bin/dynip_update
chmod +x /usr/local/bin/dynip_update
cp cron_dynip_update /etc/cron.d/dynip_update

echo "Setup COMPLETED"
echo 
"WHAT IS NEXT?

Modify /etc/dynip_update.conf accordingly with your parameters. 
Read carefully the comments.

Enable the CRON, editing /etc/cron.d/dynip_update

"