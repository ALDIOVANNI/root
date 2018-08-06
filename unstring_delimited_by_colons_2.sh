#!/bin/sh 
# setup: add our library to the $PATH (*); and do chmod 777 unstring_delimited_by_colons_2.sh so as to overcome the Permission Denied error;
# no need to make executable via the chmod +x because we supplied the "-f" option
# (*) = PATH=$PATH:$HOME/Documents/UNIX\ Learning;export PATH;echo $PATH
# description: extract the data between the 3 lines (1 line of colons, a literal and another line of colons) into separate files; and the literal must be the filename that is created.
# origin: http://www.theunixschool.com/2012/06/awk-10-examples-to-split-file-into.html and then go to the blog at the bottom
# invocation: [bash] unstring_delimited_by_colons_2.sh input_file_delimited_by_colons
# Notes: 
# 1. To get this SS to work: I had to remove the <CR> from the input file (I had to use the tr command hack); and regarding the SS, I had to purify it by copying the code into a new SS; deleting the original SS; and renaming the new SS to the old SS.
# Do the following whenever we discover a colon in the first column (^ means the first column; and $ means the last column):   
# 2. getline x means: skip the record (colons in this case); and read the next record and place its contents (the literal) into variable x (variable x is the filename that will be written later when the print > x command is executed)
# 3. getline means read the record 
# 4. What "next" means: the record containing the pattern--and the pattern is the colon in this case--should not be added to the new file--
# this is accomplished via the "next" which skips the record that contains the colon without reading it (aka positions the pointer at the next record)
#
cat $1 # display the original file
awk '/^:/{getline x;getline;next}{print > x} {print "body processing within FileName",x}' $1

