#!/bin/bash

#Create directory for output
mkdir ~/research_output 2> /dev/null


#Var to hold output path 
output=$HOME/research_output/sys_info.txt 


#If statemnets
if [ ! -d $HOME/research_output ] 
then 
mkdir $HOME/research_output 
fi 

#check if output file exists, if so remove it
if [ ! -f $HOME/research_output/sys_info.txt ] 
then
rm $HOME/research_output/sys_info.txt 
fi


echo "A Quick System Audit script"
date
echo ""
echo "Machine Type Info:"
echo $MACHTYPE
echo -e "Uname info: $(uname -a) \n"
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n"
echo "Hostname: $(hostname -s) "
echo "DNS Servers: "
cat /etc/resolv.conf
echo "Memory Info:"
free
echo -e "\nCPU Info:"
lscpu | grep CPU
echo -e "\nDisk Usage:"
df -H | head -2
echo -e "\nWho is logged in: \n $(who) \n"
echo "-----------------------------------------------------" 
echo -e "\nExec Files:"
find /home -type f -perm 777
echo -e "\nTop 10 Processes"
ps aux -m | awk {'print $1, $2, $3, $4, $1'} | head