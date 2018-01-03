package Raindrops;
use strict;
use warnings;
use Math::Big::Factors;

sub convert {
  my ($n)= @_;
  my $str = '';
   $str .= "Pling" if $n / 3 == int($n / 3);
   $str .= "Plang" if $n / 5 == int($n / 5);
   $str .= "Plong" if $n / 7 == int($n / 7);
   return $str if $str;

   return $n;
}


1;