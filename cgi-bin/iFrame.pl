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

my $email = param('email');
my $phone = param('phone');

my $sth = $dbh->prepare("INSERT INTO iframe (lastname, firstname) values (?,?)");
my $firstname = param('firstname');
my $lastname = param('lastname');
$sth->execute($lastname,$firstname) or die $DBI::errstr;
$sth->finish();
$dbh->disconnect();
print "<h1> Thank you for submitting the form</h1>";
print "<p> Dear ", $firstname,"</p>";
print "<p> Thank you for email ", $email," and phone number ", $phone,"</p>";
print "<p> We will contact you soon</p>";

