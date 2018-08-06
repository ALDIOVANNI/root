#!/bin/ksh
SUBJECT="Testing EMAIL from UNIX"
TO=adiovanni@earthlink.net
CC=`tr '
' ', ' < mailCClist.txt`
#BCC="alfred.diovanni@gmail.com"

echo "Send the E-mail message..."
/usr/bin/mailx -s "${SUBJECT}" ${TO} <<-END

~< ! uuencode UNIX_Interview_Questions_and_Answers_#2.pdf "UNIX Q & A # 2 of 2"

~c ${CC}

~b ${BCC}
	Hi Family
	
	I will get a real long-lasting job soon...don't worry !
	
	Thanks.
	
	DAD
	
	~.
	END
	
echo "Mail Sent!!"
	