#!/usr/bin/perl

use warnings;
use XML::XPath;
use XML::XPath::XMLParser;
use open ':std', ':encoding(UTF-8)';
use utf8;

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");

my $errors = 0;

for my $arg (@ARGV) {
	open FH, $arg or die $!;
	while(<FH>) {
		print $_;
	}
	close FH;
}