#!/bin/bash
name='Joe'
echo "Hello $name." 
echo -e "\nThis is my script.\n" 
echo -e "The files in $PWD are: \n$(ls)"
echo -e "\nCopying the passwd file to your current direcotry.\n" 
cp /etc/passwd $PWD
echo -e "The files in $PWD are now: \n$(ls) " 
echo " " 
echo "Buh bye" 