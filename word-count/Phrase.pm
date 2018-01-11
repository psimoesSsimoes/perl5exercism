package Phrase;



sub word_count {
    my $phrase = shift;
    my %counter;
    foreach my $word ($phrase=~ /(\w+)/g){
        $counter{lc $word}++;
       
    }
    return \%counter;
}

1;