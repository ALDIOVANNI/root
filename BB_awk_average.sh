#!/bin/awk -f
# execute choice # 1: wc -c *.* | awk -f BB_awk_average.sh
# execute choice # 2: ls -s | awk -f BB_awk_average.sh 
BEGIN {
# How many lines
    lines=0;
    total=0;
}
{
# this code is executed once for each line
# increase the number of files
#   lines++; this line has a bug; replaced by next line
    if ($1 != "total" ) lines++;
# increase the total size, which is field #1
    total+=$1;
}
END {
# end, now output the total
    print lines " lines read";
    print "total is ", total;
    if (lines > 0 ) {
print "average is ", total/lines;
    } else {
print "average is 0";
    }
}
