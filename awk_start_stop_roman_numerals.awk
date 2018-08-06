#!/bin/awk -f
# invocation: cat input_file_for_awk_start_stop_roman_numerals | awk_start_stop_roman_numerals.awk
# the -f is to make SS executable so that we do not have to do chmod +x SS-name; 
# do not supply -x for debugging (it only works for sh or bash)
# description: only for the lines sandwiched between the START and STOP delimiters: change the field separator from space to colon;
# and when we navigate past the STOP delimiter, change the field separator back to space. 
{	
	if ($1 == "#START") {
		FS=":";
	} else if ($1 == "#STOP") {
		FS=" ";
	} else {
		#print the Roman number in column 3 (the 3rd field) in whatever format
		print $3
	}
}

