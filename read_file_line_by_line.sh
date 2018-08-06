#!/bin/sh

# Demonstrate reading a file line-by-line, using I/O
# redirection in a compound command
# Also test variable setting inside an implicit subshell.
# Test this under sh and ksh and compare the output.

# line="TEST"  # it is not necessary to initialize this line string

# line is a buffer...what is actually read is the filename or parm-arguement after the "done <"

save=

if [ -z "$1" ]; then
   echo "Usage: $0 filename"
else
   if [ -r $1 ]; then
      while read line; do
         echo "$line"
         save=$line
      done < $1  # can be the actual name of the file or $1 which is the parm that contains the filename
   fi
fi
echo "End value of \$line is $line"
echo "End value of \$save is $save"
