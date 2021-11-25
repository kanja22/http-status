#!/usr/bin/perl
use strict;
use warnings;

# CGI is a perl module which handles common gateway interface requests ans responses.
# The param method of the module is used to pass parameters to the script. 
use CGI qw(param);

# param('status') specifies the status code in the header information
my $status = param('status');
unless( $status < 600 && $status > 0 ){
        print "Status: 404\n";
        print "Content-Type: text/plain\n";
        print "\n";
        exit;
}
print "Status: $status\n";
print "Content-Type: text/plain\n";
print "\n";
print "HTTP status $status\n";