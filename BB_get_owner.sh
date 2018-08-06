#!/usr/bin/bash
# Run this script as follows: ls -l | . BB_get_owner.sh 3
# It will display the 3rd column of the ls output which is the owner
column=$1
awk '{print $'$column'}'
