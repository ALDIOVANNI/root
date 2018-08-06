#!/usr/bin/perl
# to execute: perl <<perl-file-name>>.pl

@ages = (25, 30, 40);             
@names = ("John Paul", "Lisa", "Kumar");

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

# the qw// operator delimits the array elements by space and not by comma (see list example from above)

@days = qw/Mon 
Tue 
Wed 
Thu 
Fri 
Sat 
Sun/;

# - means start from the end and traverse back to the beginning

print "$days[0]\n";
print "$days[1]\n";
print "$days[2]\n";
print "$days[6]\n";
print "$days[-1]\n";
print "$days[-7]\n";

# the double-dot (..) is called the range operator

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print "@var_10\n";   # Prints number from 1 to 10
print "@var_20\n";   # Prints number from 10 to 20
print "@var_abc\n";  # Prints number from a to z 

# note the "scalar" operator which yields the total # of elements in the array 

@array = (1,2,3);
print "Size: ",scalar @array,"\n";

# another example:

@array = (1,2,3);
$array[50] = 4; # fill 51st slot

$size = @array;        # array is 51 elements long
$max_index = $#array;  # the # means the highest index of array @array which when converted to scalar is 50

print "Size:  $size\n";
print "Max Index: $max_index\n";
