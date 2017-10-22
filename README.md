# README #

Here a script that I’ve created to update your Dynamic DNS service.
You can run it manually or put in cron to run every few minutes.
It sends the update ONLY if the IP has changed. So you will avoid any "abuse" error, in case of too many attempts to update the IP.

This script currently works with Internet.bs and NO-IP.com services.

It requires curl package.
Tested on Raspberry Pi and Debian stable distros.

This is composed by 2 files:
* Config file: `dynip_update.conf.example`
* Script file: `dynip_update`



### What is this repository for? ###

* Update your dynamic DNS provider (InternetBS / NO-IP.com)
* Version: 2.1

### How do I get set up? ###

1. Installation:
   * `sudo cp dynip_update.conf.example /etc/dynip_update.conf`
   * Modify `/etc/dynip_update.conf` accordingly with your parameters
   * `sudo cp dynip_update /usr/local/bin/dynip_update`
2. Dependencies: *curl, dig, sendmail*


### Who do I talk to? ###

* Repo owner or admin
