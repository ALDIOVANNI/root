#!/bin/ksh

# If we have not redirected standard output, save a copy of
# the output of this script into a file, but still send a
# copy to the screen.

if [[ -t 1 ]] ; then
  # Only do this if fd 1 (stdout) is still connected
  # to a terminal

  # We want the standard output of the "tee" process
  # to go explicitly to the screen (/dev/tty)
  # and the second copy goes into a logfile named $0.out

  tee "$0.out" > /dev/tty |&

  # Our stdout all goes into this coprocess
  exec 1>&p
fi

# Now generate some output
print "User activity snapshot on $(hostname) at $(date)"
print
who