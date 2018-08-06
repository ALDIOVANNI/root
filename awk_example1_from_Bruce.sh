#!/bin/bash
# Linux users have to change $8 to $9
# How to execute this SS: ls -l|bash awk_example1_from_Bruce.sh
# Alternative way to execute (add our lib to the $PATH thereby making SS a command; make command executable; 
# run command straightaway w/o the help of bash):
# 1. PATH=$PATH:$HOME/Documents/UNIX\ Learning;export PATH  # add our library to the $PATH
# 2. chmod +x awk_example1_from_Bruce.sh  # make this SS executable because did not supply the -f option on line #1 after the !/bin/bash (*OR* on the bash/awk command)
# 3. ls -l | awk_example1_from_Bruce.sh
#
awk '
BEGIN 	{ print "File\tOwner" } 
		{ print $9, "\t", $3}	
END   	{ print " - DONE -" }
'
