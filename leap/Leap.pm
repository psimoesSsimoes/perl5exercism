# Declare package 'Leap' with version
package Leap 2;
use strict;
use warnings;

sub is_leap {
  my ($year) = @_;
    return 1
  	  if ($year % 4 eq 0) and ($year % 100 eq 0) and ($year % 400 eq 0);
    return 0
  	  if ($year % 4 eq 0) and ($year % 100 eq 0) or !($year % 4 eq 0);
    
    return 1
}

1;
