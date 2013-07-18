#!/usr/bin/perl
use strict;
use LWP;
use HTML::Form;
use Data::Dumper;


my $url = "http://www.google.com";

my $ua = new LWP::UserAgent;
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.0.1) Gecko/2008070208 Firefox/3.0.9");
$ua->cookie_jar(HTTP::Cookies->new());

my $req = new HTTP::Request GET => $url;
my $res = $ua->request($req);
my @forms = HTML::Form->parse( $res );

print Dumper \@forms;
