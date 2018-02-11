package Proverb;
use strict;
use warnings;
use Data::Dump 'dump';

# sub proverb {
#     my ($items, $qualifier) = @_;
#     print STDERR "$items : $qualifier";
#     my @proverb;

#     $qualifier .= " " if $qualifier;
#     print STDERR "\n";
#     print STDERR "qualifier : $qualifier";

#     print STDERR "\n";
#     my $last_line = "And all for the want of a ${qualifier}$items->[0].";


#     print STDERR "$last_line";
#     print STDERR "\n";
#     while ( @$items > 1 ) {
#         push @proverb
#              => sprintf("For want of a %s the %s was lost.", shift @$items, $items->[0]);
#     }

#     return join "\n" => (@proverb, $last_line)
# }
#
# sub proverb {
# 	my ($param,$qualifier) = @_;
# 	my $story="";
# 	for(my $i = 0; $i < scalar(@$param) -1 ; $i++ ){
# 		$story .= "For want of $$param[$i] the $$param[$i+1] was lost.\n";
# 	}
# 	$story.=sprintf("And all for the want of a %s%s.", ($qualifier ? "$qualifier ":""),$$param[0]);
# 	return $story;
# }

sub proverb {
	
	my ($param, $qualifier) = @_;
	my $story = '';
	
	for(my $i = 0; $i < scalar(@$param) - 1; $i++){
		$story .= sprintf("For want of a %s the %s was lost.\n", $$param[$i], $$param[$i + 1]);
	}

	$story .= sprintf("And all for the want of a %s%s.",  ($qualifier ? "$qualifier " : ''), $$param[0]);
	
	return $story;
}


1;


1;
