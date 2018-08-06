#!/bin/awk -f
# setup: add our library to the $PATH (*); and do chmod 777 count_users_2.awk so as to overcome the Permission Denied error; 
# no need to make executable via the chmod +x because we supplied the "-f" option
# (*) = PATH=$PATH:$HOME/Documents/UNIX\ Learning;export PATH
# the -x is for debugging (don't supply this...will get error if you do !)
# To invoke: ls -ltra | count_users_2.awk
# 3 is the column of the ls command output that corr. to the file-owner
# description: We have a directory that is overflowing with files, and we want to find out how many files are owned by each user; and 
# perhaps how much disk space each user owns. This is an example of ASSOCIATIVE ARRAYS.
# attempt # 1 that is no good: 				    ls -ltra | file-filter (aka a file redirection)
# attempt # 2 (for a very large directory) that is no good: find . -type f -print0 | xargs -0 ls -ltra | file-filter (aka a file redirection)
# file-filter is optional here 
BEGIN {
	username[""]=0;
}
{
# add the user's name (the 3rd column of the ls output, which is $3 upon entry into this SS
	username[$3]++;
}
END {
	for (i in username) {
# testing for "" will skip all empty files
# i is the username; username[i] is how many files he owns
		if (i != "") {
			print username[i], i;
		}
	}
}
