#!/usr/bin/perl -w
use strict;
use warnings;
use DBI;
use CGI qw(:standard);
use CGI::Carp qw(fatalsToBrowser);
print "Content-type: text/html\n\n";
my $driver = "mysql";
my $database = "tntran35_guest";

my $dsn = "DBI:$driver:$database:localhost";

my $userid = "tntran35_guest";

my $password = "51611561";


my $dbh = DBI->connect($dsn, $userid, $password ) or die print "DB Connection Error";

$dbh->disconnect();
print "Connection success!";

