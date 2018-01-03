package Hamming;
use strict;
use warnings;

sub compute {
	my $a = shift;
	my $b = shift;

	my $hamming = 0;
	my $i;

	return die("(?^:DNA strands must be of equal length)")
		if ((length $a) != (length $b));

	for $i (0..length($a)-1){
    	if (substr($a, $i, 1) ne substr($b, $i, 1)){
			$hamming++;
		}
    	   
	}
	return $hamming
}
1;
