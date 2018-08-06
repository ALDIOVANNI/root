#!/usr/bin/perl
# to execute: perl perl_push_unshift_pop_shift_array.pl

# 1. push @ARRAY, LIST
# Pushes the values of the list onto the end of the array.

# 2. pop @ARRAY
# Pops off and returns the last value of the array.

# 3. shift @ARRAY
# Shifts the first value of the array off and returns it, shortening the array by 1 and moving everything down.

# 4. unshift @ARRAY, LIST
# Prepends list to the front of the array, and returns the number of elements in the new array.

# create a simple array
@coins = ("Quarter","Dime","Nickel");
print "1. \@coins @ create time = @coins\n";

# add one element at the end of the array
push(@coins, "Penny");
print "2. \@coins after PUSH    = @coins\n";

# add one element at the beginning of the array
unshift(@coins, "Dollar");
print "3. \@coins after UNSHIFT = @coins\n";

# remove one element from the last of the array.
pop(@coins);
print "4. \@coins after POP     = @coins\n";

# remove one element from the beginning of the array.
shift(@coins);
print "5. \@coins after SHIFT   = @coins\n";
