#!/bin/bash
#add fix to exercise5-server2 here
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -P ''
sudo apt-get install -y sshpass
sshpass -p 'vagrant' ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@server1
