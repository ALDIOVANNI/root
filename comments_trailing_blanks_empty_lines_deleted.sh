#!/bin/sh
# invocation: comments_trailing_blanks_empty_lines_deleted.sh
# Comments are first removed from a line, potentially leaving white space characters that were before the comment. 
# The second command removes all trailing blanks, so that lines that are now blank are converted to empty lines. 
# The last command deletes empty lines. 
# Together, the three commands remove all lines containing only comments, tabs or spaces.
sed -e 's/#.*//' -e 's/[ ^I]*$//' -e '/^$/ d' <input_file_comments_trailing_blanks_empty_lines_deleted >output_file_comments_trailing_blanks_empty_lines_deleted
