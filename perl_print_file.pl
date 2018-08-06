#!/usr/bin/perl 
print "First, from file to screen:\n";
open(DATA, "<SENDMAIL-mail-body.txt") or die "Couldn't open file file.txt, $!";

while(<DATA>){
   tell DATA;    # print the record's byte offset 
   print "$_";
}

close(DATA);

open(DATA, "<SENDMAIL-mail-body.txt") or die "Couldn't open file file.txt, $!";

@lines = <DATA>; # import all of the lines of a file into an array

$size = @lines;
$max_index = $#lines;
print "Array Size:                             $size\n";
print "Max array index starting from offset 0: $max_index\n";

print "Next, from file to array to screen 2X--doing it 2X to check out 2 methods:\n";

$i = 0;
foreach $line(@lines){
#  print $_,;  # uncomment when not supplying $line
   print "$line";
   print @lines[$i++];	
}

close(DATA);
