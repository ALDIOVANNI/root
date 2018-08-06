#!/usr/bin/perl -w
 
$to = 'adiovanni@earthlink.net';
$from = 'root@localhost';
# $from = 'root@DAVID-PC';
$subject = 'Email Sent From PERL Script';
$message = 'This is test email sent by Perl Script';
 
open(MAIL, "|/usr/sbin/sendmail -t") or die "cannot fork sendmal: $!";
 
# Email Header
print MAIL "To: $to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n\n";
# Email Body
print MAIL $message;

close(MAIL);
print "Email Sent Successfully\n";
