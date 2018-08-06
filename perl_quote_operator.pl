#!/usr/local/bin/perl
#use strict;
#use warnings;

$a = 10;
 
$b = q{a = $a};
print "Value of q{a = \$a} = $b\n";

$b = qq{a = $a};
print "Value of qq{a = \$a} = $b\n";

print "qx executes the command within the curly braces, in this case, the date command\n";
$t = qx{date};
print "Value of qx{date} = $t\n";

$c = "abcd";
print "the q operator surrounds output with single quotes; q{abcd} = $c\n";

$d = qq{abcd};
print "qq{abcd} surrounds output with double quotes; qq{abcd} = $d\n";

$e = qx{abcd};
print "qx{abcd} surrounds output with single inverted quotes & executes the command; qx{abcd} = $e\n";
