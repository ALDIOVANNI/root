#!/bin/awk -f
# invocation: cat input_file_for_awk_start_stop_roman_numerals | awk_start_stop_roman_numerals_3.awk
# the -f is to make SS executable so that we do not have to do chmod +x SS-name; 
# do not supply -x for debugging (it only works for sh or bash)
# description: only print the lines sandwiched between the START and STOP delimiters
# This SS does not work - see awk_start_stop_roman_numerals_4.awk - this SS works OK  
{	
/#START/,/#STOP/ {print}
}

