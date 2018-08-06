#!/bin/awk -f
# function: 
# It counts # of INPUT lines (it executes 1 iteration of body per record), totals up the numbers in the first column, and calculates the average. 
# wc [optional switch] filename
# default output is X Y Z filename where X = # of lines / Y = number of words / Z = # of bytes/chars 
# optional switch choices are:
#	-l - line count
#	-w - word count
# 	-c - byte count
#	-m - char count
# Note: The individual filename can be replaced by * to indicate all files in the current directory
#
# Pipe "wc -c *" into it, and it will count all files in the current directory' byte-count, and tell you the average number of words per file, as well as the total words and the number of files.
# Usage: wc -c * | aver_num_of_files.awk
# 
BEGIN {
# How many lines
    lines=0;
    total=0;
    f = "";
}
{
# this coding only has meaning when cmdline parms are coming in; but that's not the design of this SS; rather, files from an ls command are this SS's input; and when we supply a cmdlin parm, this SS no longer works correctly
    if (f != FILENAME) {
	print "reading", FILENAME;
	f=FILENAME;
    	}
    print;
#
# this code is executed once for each file
# increase the number of files
# Done so that we do not count the total line (output of the ls command): 
#   lines++;
    if ($1 != "total" ) lines++;
# increase the byte count size for this individual file, which is field $1
    total+=$1;
#    
}
END {
# at end, output the totals
    print lines " Files read";
    print "Total # of bytes across all files is ", total;
    if (lines > 0 ) {
	print "Average # of bytes is ", total/lines;
    } else {
	print "Average is 0";
    }
}

