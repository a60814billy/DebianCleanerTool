#!/bin/bash 

logrotate -f /etc/logrotate.conf 
find /var/log | egrep "*.1|*.gz" | xargs rm -r
cat /dev/null > /var/log/auth.log 
cat /dev/null > /var/log/btmp 
cat /dev/null > /var/log/debug 
cat /dev/null > /var/log/dmesg 
cat /dev/null > /var/log/faillog 
cat /dev/null > /var/log/wtmp  
cat /dev/null > /var/log/syslog 
cat /dev/null > /var/log/lastlog 
cat /dev/null > /var/log/kern.log  
cat /dev/null > /var/log/alternatives.log 
cat /dev/null > /var/log/daemon.log 
cat /dev/null > /var/log/dpkg.log 
cat /dev/null > /var/log/fontconfig.log  
cat /dev/null > /var/log/messages
cat /dev/null > /var/log/fsck/checkfs 
cat /dev/null > /var/log/fsck/checkroot

