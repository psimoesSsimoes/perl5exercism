package Grains;
use strict;
use warnings;

sub square {
  my ($sq) = @_;
  return Compounding($sq)
    if $sq >= 1 && $sq <= 64;
}

sub total {
    my ($t)=0;
    for (my $i=1; $i<=64; $i++ ){
        $t+=Compounding($i);
    }
    return $t;

}

sub Compounding {
    return (1 << $_[0]-1); 
}

1;