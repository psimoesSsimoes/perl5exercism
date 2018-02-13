package Decimal;

use Roman;


sub new {
	my ($class,$number)=@_;	
	return bless {decimal=>$number},$class;
}

sub to_roman {
	my $self = shift;
	#don't want to rewrite the wheel	
	return Roman($self->{decimal});
}
1;
