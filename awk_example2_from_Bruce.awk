#!/bin/awk -f
# Linux users have to change $8 to $9
# How to execute this SS: ls -l | awk -f awk_example2_from_Bruce.awk
# Following is an alternative way to execute:
# Notes:  
# 1. Still have to add our lib to the $PATH thereby making the SS a command; 
# 2. No need to run chmod +x awk_example2_from_Bruce.awk to make the SS command executable because that's what the -f option 
# in the SS or outside of the SS on the bash/awk command does; 
# 3. Still have to do chmod 777 awk_example2_from_Bruce.awk so as to overcome the "Permission Denied" error;
# 4. Finally, run the command straightaway w/o the help of awk):
#
# 1. PATH=$PATH:$HOME/Documents/UNIX\ Learning;export PATH  # add our library to the $PATH
# 2. ls -l | awk_example2_from_Bruce.awk
#
# This is a more dynamic maintainable way of printing the Owner and the FileName
# $3 is the Owner / $8/$9 is the FileName
# Berkeley UNIX ls -l has 8 fields; System V (LINUX) has 9
#
# NF = Number of Fields
# 
BEGIN 	{ print "Owner\t\tFile" } 
{
	if (NF == 8) {
		print $3, "\t", $8;
	} else if (NF == 9) {
		print $3, "\t", $9;
	} 
}
END   	{ print " - DONE -" }
