#!/usr/bin/perl -w

#	Project Euler Problem 6
#	The sum of the squares of the first ten natural numbers is,
#	12+22+⋯+102=385.
#
#	The square of the sum of the first ten natural numbers is,
#	(1+2+⋯+10)2=552=3025.
#
#	Hence the difference between the sum of the squares of the
#	first ten natural numbers and the square of the sum is
#	3025−385=2640. Find the difference between the sum of the
#	squares of the first one hundred natural numbers and the
#	square of the sum.

use warnings;
use strict;

my $sum = 0;
my $sumOfSquares = 0;
my $squareOfSums = 0;

for my $i(1 .. 100){
	$sum += $i;
	$i = $i**2;
	$sumOfSquares += $i;
}
$squareOfSums = $sum ** 2;
print $squareOfSums - $sumOfSquares . "\n";



