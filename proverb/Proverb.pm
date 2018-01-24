package Proverb;
use strict;
use warnings;
use Data::Dump 'dump';

sub proverb {
    my ($items, $qualifier) = @_;
    print STDERR "$items : $qualifier";
    my @proverb;

    $qualifier .= " " if $qualifier;
    print STDERR "\n";
    print STDERR "qualifier : $qualifier";

    print STDERR "\n";
    my $last_line = "And all for the want of a ${qualifier}$items->[0].";


    print STDERR "$last_line";
    print STDERR "\n";
    while ( @$items > 1 ) {
        push @proverb
             => sprintf("For want of a %s the %s was lost.", shift @$items, $items->[0]);
    }

    return join "\n" => (@proverb, $last_line)
}

1;
