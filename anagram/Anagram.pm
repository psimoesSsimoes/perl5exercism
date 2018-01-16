package Anagram;
use strict;
use warnings;


sub match {

   my ($origin,@list) = @_;
   
   #print STDERR "$_\n" for @list;
   my @output=[];
   #print STDERR "$origin\n";
   foreach my $destination (@list){
       if (are_anagram($origin,$destination)){
           push(@output,$destination);
       }
   }
   return @output;

}

sub are_anagram {
	my ($in1, $in2) = @_;
	
	return 0 if length($in1) != length($in2); 
	
	# compared as UTF-8 and case-insensitive
	$in1 = pack('U*', sort unpack('U*', uc $in1));
	$in2 = pack('U*', sort unpack('U*', uc $in2));
	
	return $in1 eq $in2 ? 1 : 0;
}

1;
