#!/usr/bin/perl

# AVERAGE1 SUBROUTINE
sub Average1{
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;

   foreach $item (@_){
      $sum += $item;
   }
   $average = $sum / $n;

   print "Average for the given numbers : $average\n";
}

# PRINTLIST SUBROUTINE
sub PrintList{
   my @list = @_;
   print "Given list is @list\n";
}
$a = 10;
@b = (1, 2, 3, 4);

# PRINTHASH SUBROUTINE
sub PrintHash{
   my (%hash) = @_;

   foreach my $key ( keys %hash ){
      my $value = $hash{$key};
      print "$key : $value\n";
   }
}
%hash = ('name' => 'Tom', 'age' => 19);

sub Average2{
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;

   foreach $item (@_){
      $sum += $item;
   }
   $average = $sum / $n;

   return $average;
}

# AVERAGE1 Subroutine CALL
Average1(10, 20, 30);

# PRINTLIST Subroutine CALL
PrintList($a, @b);

# PRINTHASH Subroutine CALL
PrintHash(%hash);

# AVERAGE2 Subroutine CALL
$num = Average2(10, 20, 30);
print "Average for the given numbers : $num\n";
