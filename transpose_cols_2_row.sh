#!/bin/sh
# transpose columns into a row
# cat /etc/passwd2 | cut -d: -f1 | paste -s -
cat $1 | cut -d: -f1 | paste -s -
