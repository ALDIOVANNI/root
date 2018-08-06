#!/usr/bin/awk -f
# to execute: awk -f BB_awk_print_squares_2.sh
BEGIN {
    print "type a number";
}
{
    print "The square of ", $1, " is ", $1*$1;
    print "type another number";
}
END {
    print "Done"
}
