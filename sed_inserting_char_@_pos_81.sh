#!/bin/sh
# add colon @ pos # 81 - doesn't work because lines are not 81 bytes long - there must be real-estate otherwise UNIX will not honor my colon insertion request
# solution: changed column 80 to column 10 (which all records have) and it worked
# invocation: sed_inserting_char_@_pos_81.sh
cat input_file_for_adding_char_@_pos_81
# set -x  # turn on debugging# 
sed 's/./&:/10' <input_file_for_adding_char_@_pos_81 >output_file_for_adding_char_@_pos_81
# set +x  # turn off debugging
cat output_file_for_adding_char_@_pos_81
