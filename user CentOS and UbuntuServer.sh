#!/bin/bash

# I would like to start by showing who is online in the server right now.
read -p " Press enter to show active users in the server:"
w | tee -a Output.txt

 
# This is used to print the user's 10 last logs in the server.The user needs to exist in order to be found.

echo type the user name to see last 10 Log in registry:
read users 
last -n 10 $users | tee -a Output.txt

#command to see user's last activity.
echo Type the user name to see last 10 input commands:
read users
cat /home/$users/.bash_history |tail -10 |tee -a Output.txt

# Let's do some monitoring in our network now. We are doing some basic networking commands here.

read -p"Networking information: Press Enter"
netstat -a | head -20 | tee -a Output.txt

read -p"Network Ip and stuff: Press Enter"
ifconfig | tee -a Output.txt

# Let's introduce a way to check any webpage completely. 
echo Type a webpage to analyze it:
read webpage
whois $webpage | tee -a Output.txt

# Lastly. Let's check the status of our firewalls in the server.

read -p " Firewall Open Ports Analysis: Press Enter"
firewall-cmd --list-all | tee -a Output.txt

read -p " Firewall status: Press Enter"
systemctl status firewalld | tee -a Output.txt

