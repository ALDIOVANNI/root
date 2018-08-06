#!/usr/bin/perl
# to execute: perl <<perl-file-name>>.pl

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

@names = keys %data;

print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";

$size = @names;
print "1. Keys size:   $size\n";

@ages = values %data;

print "$ages[0]\n";
print "$ages[1]\n";
print "$ages[2]\n";

$size = @ages;
print "2. Values size: $size\n";

%data = ('Al Diovanni' => 58, 'David' => 26, 'Sonia' => 23);

print "\$data{'Al Diovanni'} = $data{'Al Diovanni'}\n";
print "\$data{'David'} = $data{'David'}\n";
print "\$data{'Sonia'} = $data{'Sonia'}\n"; 

@names = keys %data;

print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";

$size = @names;
print "1. Keys size:   $size\n";

@ages = values %data;

print "$ages[0]\n";
print "$ages[1]\n";
print "$ages[2]\n";

$size = @ages;
print "2. Values size: $size\n";
