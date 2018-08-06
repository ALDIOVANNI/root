#!/usr/bin/awk -f
# to execute: ls -laU | awk -f BB_awk_count_users2.awk
BEGIN {
	username[""]=0;
      }
      {
	username[$3]++;
      }
END {
	for (i in username) {
		if (i != "") {
		print username[i], i;
		}
    	}
}
