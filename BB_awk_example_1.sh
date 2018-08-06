#!/usr/bin/bash -f
# Linux users have to change $8 to $9
# run this script as follows: ls -l | . BB_awk_example_1.sh
# it will display the file and its owner from the ls output
awk '
BEGIN { print "File\tOwner" } 
{ print $9, "\t", $3}
END   { print " - DONE -" } 
'
