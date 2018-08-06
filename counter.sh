#!/bin/ksh

inc()	{
	echo $(($1 + $2))
	}
	
if [ "$1" = "" ] || [ "$2" = "" ] || [ "$3" = "" ]
then 
	echo USAGE:
	echo " counter startvalue incrementvalue endvalue "
else
	count=$1
	value=$2
	end=$3
	while [ $count -lt $end ]
	do
		echo $count
		count=$(inc $count $value)
	done
fi
