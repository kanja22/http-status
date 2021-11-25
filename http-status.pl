#!/usr/bin/perl
use strict;
use warnings;

use CGI qw(param);

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