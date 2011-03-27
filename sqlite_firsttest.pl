#!/usr/bin/perl -wT
use strict;
use warnings;
use DBI;
my $dbh=DBI->connect("dbi:SQLite:dbname=test.db","","");
my $sql="CREATE TABLE testtable (idnum,str,str2)";
my $sth=$dbh->prepare($sql);
$sth->execute();
$sql="INSERT INTO testtable VALUES ('1','a','b')";
$sth=$dbh->prepare($sql);
$sth->execute();
$sql="SELECT ALL idnum,str,str2 FROM testtable";
$sth=$dbh->prepare($sql);
$sth->execute();
DBI::dump_results($sth);
