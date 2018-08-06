#!/usr/bin/perl
# @ = array variable
# $ = scalar variable
# % = hash variable (key/value)
# when we move array to scalar, it converts it to # of elements contained within the array
# to execute: perl <<perl-file-name>>.pl

@names = ('John Paul', 'Lisa', 'Kumar');

@copy = @names;
$size = @names;

print "Given names are : @copy\n";
print "Number of names are : $size\n";
