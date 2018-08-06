#1/usr/bin/perl -w
$scrwid=80;
print "-" x $scrwid, "\n";
print STDOUT "Enter a number: ";
chop($number = <STDIN>);
print STDOUT "The number is $number.\n";
print "-" x $scrwid, "\n";