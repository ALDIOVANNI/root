#!/bin/sh -fx
# setup: add our library to the $PATH (*); and do chmod 777 column2B.sh so as to overcome the Permission Denied error; 
# no need to make executable via the chmod +x because we supplied the "-f" option
# (*) = PATH=$PATH:$HOME/Documents/UNIX\ Learning;export PATH
# the -x is for debugging
# To invoke: ls -ltra | ./column2B.sh 3 | uniq -c | sort -nr
# 3 is the column of the ls command output that corr. to the file-owner
# before running the command, key: chmod 777 column2B.sh
# description: utility that counts how many files are owned by each user
{
# alternative coding: set variable=value (c=${1:-1} in this case) on the awk command line
awk '{print $c}' c=${1:-1} | uniq -c | sort -nr
}
