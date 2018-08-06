#!/usr/bin/perl

# Display all the files in /root directory.
$dir = "/root/*";
my @files = glob( $dir );

foreach (@files ){
   print $_ . "\n";
}
