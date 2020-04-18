# README #

Here a script that I have created to update your Dynamic DNS service.
You can run it manually or put it within a cron to run every few minutes.
It sends the update ONLY if the IP has changed. So you will avoid any "abuse" error, in case of too many attempts to update the IP.

This script currently works with Internet.bs, NO-IP.com and Cloudflare services.

It requires `curl` package.
Tested on Raspberry Pi raspbian, Ubuntu 18.04 and Debian 9 distros.

This script is composed by 3 files:
* Config file: `dynip_update.conf.example`
* Script file: `dynip_update`
* Cron file: `cron_dynip_update`


### What is this repository for? ###

* Update your dynamic DNS provider (InternetBS / NO-IP.com / Cloudflare)
* Version: 3.1

### How do I get set up? ###

1. Installation:
- `sudo cp dynip_update.conf.example /etc/dynip_update.conf`
- Modify `/etc/dynip_update.conf` accordingly with your parameters. Read carefully the comments.
- `sudo chmod 600 /etc/dynip_update.conf`
- `sudo cp dynip_update /usr/local/bin/dynip_update`
- `sudo cp cron_dynip_update /etc/cron.d/dynip_update` if you'd like to run this in a cron. You can change the frequency (default every 5 minutes), editing this file.
2. Dependencies: *curl, dig, sendmail*


### Who do I talk to? ###

* Repo owner or admin
