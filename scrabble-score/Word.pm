package Word;

use Test::More;


my %scrabble_points = (
    "A" => 1,
    "E" => 1,
    "I" => 1,
    "O" => 1,
    "U" => 1,
    "L" => 1,
    "N" => 1,
    "R" => 1,
    "S" =>1,
    "T" => 1,
    "D"=>2,
    "G"=>2,
    "B"=>3,
    "P"=>3,
    "M"=>3,
    "C"=>3,
    "F"=>4,
    "Y"=>4,
    "W"=>4,
    "V"=>4,
    "H"=>4,
    "K"=>5,
    "J"=>8,
    "X"=>8,
    "Q"=>10,
    "Z"=>10,


);

sub new {
   my ($class,$word) = @_;
   bless { word => uc $word } => $class;
}

sub score {
   my $self = shift;
   my $score=0;
   foreach my $c (split //,$self->{word}) {
        $score+=$scrabble_points{$c};
 }

  
   return $score;

}
1;