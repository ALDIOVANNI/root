#!/usr/bin/awk -f
# to execute: awk -f BB_awk_print_squares_1.sh
BEGIN {

# Print the squares from 1 to 10 the first way

	i=1;
	while (i <= 10) {
	print "The square of ", i, " is ", i*i;
	i = i+1;
	}

# do it again, using more concise code

	for (i=1; i <= 10; i++) {
	print "The square of ", i, " is ", i*i;
	}

# now end
exit;
}
