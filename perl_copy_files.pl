#!/usr/bin/perl

# Open file to read
open(DATA1, "<mailx_save_command.txt");

# Open new file to write
open(DATA2, ">mailx_save_command_copy.txt");

# Copy data from one file to another.
while(<DATA1>)
{
   print DATA2 $_;
}
close( DATA1 );
close( DATA2 );
