#!/usr/bin/perl

use IO::Socket;

if(@ARGV != 3){
	print "+++Port scanner coded BY Elsfa7_110+++
υѕαge : [min port] [max port] [host]
";
	exit 1;
}
if($ARGV[0] > $ARGV[1]){
	print "Error: min port is higher then max port\n";
	exit 1;
}
for($i = $ARGV[0]; $i <= $ARGV[1]; ++$i){
	$host = IO::Socket::INET->new(PeerAddr=>$ARGV[2],PeerPort=>$i,proto=>'tcp',Timeout=>1) and print "Port $i is open\n";
}
exit;
