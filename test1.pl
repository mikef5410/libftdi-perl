#!/usr/bin/perl
#

use Data::Dumper qw(Dumper);
use FTDI;

printf "Entering test\n";


my $ctx = FTDI::new();
print $ctx,"\n";

my $result = $ctx->init();
print "init result: $result\n";

print "In EP:", $ctx->{in_ep},"\n";
print "Out EP:", $ctx->{out_ep},"\n";


my $result = $ctx->usb_open( 0x0403, 0x6014);
print "open result: $result\n";

print "FTDI context:", Dumper($ctx),"\n";
print "FTDI type: ", $ctx->{type}, "\n";
print "2232H is: ",$FTDI::TYPE_2232H,"\n";

print "In EP:", $ctx->{in_ep},"\n";
print "Out EP:", $ctx->{out_ep},"\n";

my $chipid = FTDI::read_chipid($ctx);
printf("FTDI chipid: %X\n",$chipid);

my $result = FTDI::usb_close($ctx);
print "close result: $result\n";

