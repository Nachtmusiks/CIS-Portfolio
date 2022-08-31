#!/usr/bin/perl -w
use strict;
use warnings;
use DBI;
use CGI qw(:standard);
use CGI::Carp qw(fatalsToBrowser);
print "Content-type: text/html\n\n";

my $firstname = param('firstname');

my $lastname = param('lastname');
my $email = param('email');
my $phone = param('phone');

print "<h1> Thank you for submitting the form</h1>";
print "<p> Your first name is", $firstname,"</p>";
print "<p> Your last name is", $lastname,"</p>";
print "<p> Your email is", $email,"</p>";
print "<p> Your phone is", $phone,"</p>";
