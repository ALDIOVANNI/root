#!/bin/awk -f
# invocation: cat input_file_for_awk_start_stop_roman_numerals | awk_start_stop_roman_numerals_4.awk
# the -f is to make SS executable so that we do not have to do chmod +x SS-name; 
# do not supply -x for debugging (it only works for sh or bash)
# description: only print the lines sandwiched between the START and STOP delimiters;
# this is the equivalent code, using the if command
{	
  if ($0 ~ /#START/) {
    triggered=1;
  }
  if (triggered) {
     print;
     if ($0 ~ /#STOP/) {
	triggered=0;
     }
  }
}
