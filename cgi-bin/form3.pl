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

my $sth = $dbh->prepare("INSERT INTO iframe (lastname, firstname ) values (?,?)");

my $firstname = param('firstname');
my $lastname = param('lastname');

$sth->execute($lastname,$firstname) or die $DBI::errstr;
$sth->finish();
$dbh->disconnect();
print "<h1> Thank you for submitting the form</h1>";
print "<p> Your first name is", $firstname,"</p>";
print "<p> Your last name is", $lastname,"</p>";
print "<p> Your email is", $email,"</p>";
print "<p> Your phone is", $phone,"</p>";


