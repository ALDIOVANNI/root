#!/usr/local/bin/perl
 
$a = 21;
$b = 10;

print "Value of \$a = $a and value of \$b = $b\n";

if( $a == $b ){
   print "$a == \$b is true\n";
}else{
   print "\$a == \$b is not true\n";
}

if( $a != $b ){
   print "\$a != \$b is true\n";
}else{
   print "\$a != \$b is not true\n";
}

print '<=> means returns -1, 0, or 1 '; 
print 'depending on whether the left argument is numerically less than, equal to, or ';
print "greater than the right argument\n";

$c = $a <=> $b;
print "\$a <=> \$b returns $c\n";

if( $a > $b ){
   print "\$a > \$b is true\n";
}else{
   print "\$a > \$b is not true\n";
}

if( $a >= $b ){
   print "\$a >= \$b is true\n";
}else{
   print "\$a >= \$b is not true\n";
}

if( $a < $b ){
   print "\$a < \$b is true\n";
}else{
   print "\$a < \$b is not true\n";
}

if( $a <= $b ){
   print "\$a <= \$b is true\n";
}else{
   print "\$a <= \$b is not true\n";
}
