#!/usr/bin/perl
use strict;
use warnings;

# Used variables
my ($first_income, $percent, $period, $period_income);

# Read from stdin
print "Enter first income: ";
$first_income = <STDIN>;
chomp($first_income);

print "Enter percent: ";
$percent = <STDIN>;
chomp($percent);

print "Enter period: ";
$period = <STDIN>;
chomp($period);

print "Enter period income: ";
$period_income = <STDIN>;
chomp($period_income);

my $current_amount = 0;

print "\n=== Breakdown by months ===\n\n";

foreach (my $i = 1; $i <= $period; $i++) {
	$current_amount = $first_income + ( $first_income * ($percent / 100) ); # Calculate interests
	$first_income = $current_amount + $period_income; # Update current amount and add the new income for that period

	printf("Amount for period %d: %.2f\n", $i, $current_amount);
}

print "\n\nFinal amount: $current_amount\n";

exit 0;
