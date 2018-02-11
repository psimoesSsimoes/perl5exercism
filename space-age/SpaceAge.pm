package SpaceAge;
use strict;
use warnings;

# hash for 
my %orbital_period = qw(
    mercury 0.2408467
      venus 0.61519726
      earth 1
       mars 1.880818
    jupiter 11.862615
     saturn 29.447498
     uranus 84.016846
    neptune 164.79132
);


sub new {
  my ($class, $to) = @_;
  return bless {seconds=>$to},$class;
}

sub seconds{
	my $class = shift;
	return $class->{seconds};
}

sub AUTOLOAD{
	# autoload is a crazy feature... truly powerfull or truly destructive lol	
	my $method = our $AUTOLOAD;
	
	$method=~ s/.*:://;
	
	my $planet = substr($method,3);
	
	#crazy how perl works. grep on keys lol
	if (grep {$planet eq $_} keys %orbital_period){
	
		my $self = shift;
		
		my $earth_years = $self->seconds / 31_557_600;
		
		my $output = $earth_years/$orbital_period{$planet};

		return sprintf "%.2f" => $output;
	
	}



	print STDERR $method . "\n";
	
}


1;
