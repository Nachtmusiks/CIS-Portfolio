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


my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;

my $sth = $dbh->prepare("SELECT * FROM guest");
$sth->execute() or die $DBI::errstr;

my $num_rows=$sth->rows();

my $num_fields=$sth->{NUM_OF_FIELDS};

print "<h1>Query will return $num_fields fields.</h1>";
print "<h1>Query will return $num_rows rows.</h1>";
print "<table><tr><th>First Name</th><th>Last Name</th></tr>";
my $firstname;
my $lastname;

 while (($firstname, $lastname) = $sth->fetchrow()) {

      print "<tr> <td>$firstname</td> <td>$lastname</td>";

   }
  print "</table>"; 
$sth->finish();
$dbh->disconnect();

