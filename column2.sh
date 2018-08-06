#!/bin/sh -fx
# setup: add our library to the $PATH (*); and do chmod 777 column2.sh so as to overcome the Permission Denied error;
# no need to make executable via the chmod +x because we supplied the "-f" option
# (*) = PATH=$PATH:$HOME/Documents/UNIX\ Learning;export PATH
# the -x is for debugging
# To invoke: ls -ltra | ./column2.sh 3 | uniq -c | sort -nr
# 3 is the column of the ls command output that corr. to the file-owner
# before running the command, key: chmod 777 column2.sh
# description: utility that counts how many files are owned by each user
{
column=${1:-1}  # 1 is the default value for $1 if $1 is not passed into this UNIX SS 
awk '{print $'$column'}' | uniq -c | sort -nr
}
