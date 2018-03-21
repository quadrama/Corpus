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
	my $xp = XML::XPath->new(filename => $arg);
	my $nodeset = $xp->find('//profileDesc/particDesc/listPerson/person/@xml:id|//profileDesc/particDesc/listPerson/person/persName/@xml:id');
	
	my %declared_ids = ();
	foreach my $node ($nodeset->get_nodelist) {
		my $id = $node->getNodeValue;
		$declared_ids{"#".$id} = 1;
	}
	
	#print join(",", keys(%declared_ids))."\n";
	
	$nodeset = $xp->find('//sp/@who|//rs/@ref');
	my %used_undeclared = ();
	foreach my $node ($nodeset->get_nodelist) {
		for my $id (split(" ", $node->getNodeValue)) {
			if (!exists $declared_ids{$id}) {
				$used_undeclared{$id} = 1;
			}
		}
	}
	if (scalar(keys(%used_undeclared)) > 0) {
	    print STDERR $arg."\n";
	    print STDERR "IDs used without declaration: ";
	    print STDERR join(", ", keys(%used_undeclared));
	    print STDERR "\n";
	}
	$errors += scalar(keys(%used_undeclared))
}
exit($errors);

