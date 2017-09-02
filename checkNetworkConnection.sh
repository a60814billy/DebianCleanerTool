#!/bin/bash

# ping gateway 
ping -c 5 -s 1 `netstat -r | grep default | awk '{print $2}'` > /dev/null 2>&1
