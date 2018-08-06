#!/bin/awk -f
# invocation: cat input_file_for_awk_start_stop_roman_numerals | awk_start_stop_roman_numerals_2.awk
# the -f is to make SS executable so that we do not have to do chmod +x SS-name; 
# do not supply -x for debugging (it only works for sh or bash)
# description: only for the lines sandwiched between the START and STOP delimiters: change the field separator from space to colon;
# and when we navigate past the STOP delimiter, change the field separator back to space. 
{	
# here is another way of doing the same thing as in the awk_start_stop_roman_numerals.awk SS
# ~ means the colon literal is found within the current line (aka $0)
# we no longer have to test for #START and #STOP because the : is present on every line that is sandwiched between the #START and the #STOP
	if ( $0 ~ /:/ ) {
		FS=":";
		$0=$0 # field now has to be re-evaluated
	} else {
		FS=" ";
		$0=$0 # field now has to be re-evaluated
	}
	#print the third field (the Roman number in column 3) in whatever format
	print $3;
}

