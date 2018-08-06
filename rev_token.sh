#!/bin/ksh
echo "$1 $2 $3" | awk '{
    n=split($0,A);
    S=A[n];
    for(i=n-1;i>0;i--)
     S=S" "A[i]
    }
    {
     print S
    }'
    
    # cannot figure out how to retrofit this coding inside of the AWK:
    # rm S_File.txt 2>/dev/null;
    # echo S >> S_File.txt;	
    # sed 's/^ *//' S_File.txt;  # remove leading space	
    # cat S_File.txt;    