#!/bin/bash 

# stop log service 
service rsyslog stop
# clean logfile 
bash ./clean_log.sh 
# shirk disk
bash ./clean.sh 

# remove user file
echo "Remove User Files"
unset HISTFILE
rm -rf /root/.cache/ /root/.config/ /root/.zsh_history /root/.zsh-update /root/.zcompdump* /root/.vimshell/ /root/.viminfo /root/.lesshst 

echo "Remove SSH Key"
# remove ssh key
rm -rf /etc/ssh/*key*
