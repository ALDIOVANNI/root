#!/usr/bin/bash
# to run: ./remove_4th_path_component *OR* ./remove_4th_path_component << 5 path location >>
if [ -z $1 ]
then
export x="/export/home/guru/prog/perl"
else
export x=$1
fi
echo " before = " $x
echo " after  = " $x | cut -d"/" -f -3,5-
