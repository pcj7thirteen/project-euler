#!/usr/bin/perl -w

#	Project Euler Problem 8
#	
#	A Pythagorean triplet is a set of three natural numbers, a<b<c, for which a^2+b^2=c^2. For example, 3^2+4^2=9+16=25=5^2. There exists exactly one Pythagorean triplet for which a+b+c = 1000. Find the product abc.

use strict;
use warnings;

my $s = $ARGV[0];
my $found = 0;
my $product = 0;
my $a = 0; 
my $b = 0; 
my $c = 0;
print $s."\n";
for ($a = 1; $a < $s/3; $a++){
	for ($b = $a; $b < $s/2; $b++){
		$c = $s - $a - $b;
		#$found = ($a*$a + $b*$b == $c*$c) ? 1 : 0;
		if ($a*$a + $b*$b == $c*$c){
			$found = 1;
			last;
		}
	}
	if ($found){
		last;
	}
}
$product = ($found) ? $a*$b*$c : 0;
print "The triplet is ".$a.", ".$b.", ".$c."\n";
print "The product is ".$product."\n";
