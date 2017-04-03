#!/bin/bash 

echo "Please run `unset HISTFILE` first."

# stop log service 
service rsyslog stop
# clean logfile 
bash ./clean_log.sh 
# shirk disk
bash ./clean.sh 

# remove apt cache
echo "Remove apt cache"
rm -rf /var/lib/apt/lists/*

# remove user file
echo "Remove User Files"
rm -rf /root/.cache/ /root/.config/ /root/.zsh_history /root/.zsh-update /root/.zcompdump* /root/.vimshell/ /root/.viminfo /root/.lesshst 

# remove ssh key
echo "Remove SSH Key"
rm -rf /etc/ssh/*key*
