#!/bin/awk -f
BEGIN {
	print 7%3; 
	a = 45; b = 73; c = "Porn"; d = "Stars"
# separating variables by 1 space concatenates them	
	print "numbers concatenated", a b, c d;
 	exit;
}
{} # we can only use this area when a file of records are inputted/piped into the SS
END {print "end\r\n";exit;}

