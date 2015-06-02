#!/usr/bin/perl -w

#	Project Euler 16

#	2^15 = 32768 and the sum of its digits is 3+2+7+6+8 = 26. What is the sum of the digits of the number 2^1000?

use strict;
use warnings;
use bigint;

my $power = $ARGV[0];

my $bigNumber = 2 ** ($power);

my @digits = split('',$bigNumber);

my $sum;

grep { $sum += $_ } @digits;

print "$sum\n";