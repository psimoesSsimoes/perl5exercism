package Prime;
use Data::Dumper;
use strict;
use warnings;
sub factors {
	my $number = shift;
	my @fac;
	my $i = 2;
	if ($number == 1){
		return \@fac;
	}
	
	for ($number != 1) {
		if ($number % $i){	++$i;

				}else{
		push(@fac,$i);
		
			say STDERR "when entered if i is $i and number is $number"; 
			$number = int($number / $i);
			}
	}
		
	return \@fac;
}

1;
